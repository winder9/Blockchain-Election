pragma solidity >=0.4.2;

contract Election {
    // Read/write candidate
    string public candidate;
    struct Candidate {
        uint id;
        string name;
        uint voteCount;
    }
    uint public candidatesCount;

    mapping(uint => Candidate) public candidates;

    // Constructor
    constructor() public {
        candidatesCount = 0;
        addCandidate("Candidate 1");
        addCandidate("Candidate 2");
    }

    function addCandidate(string memory _name) private {
        candidatesCount++;
        candidates[candidatesCount] = Candidate(candidatesCount, _name, 0);
    }
}
