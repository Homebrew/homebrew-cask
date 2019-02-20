workflow "Trigger `automerge` on status update." {
  on = "status"
  resolves = ["automerge"]
}

workflow "Trigger `automerge` on pull request update." {
  on = "pull_request"
  resolves = ["automerge"]
}

workflow "Trigger `automerge` on pull request review." {
  on = "pull_request_review"
  resolves = ["automerge"]
}

workflow "Trigger `automerge` on pull request review comment." {
  on = "pull_request_review_comment"
  resolves = ["automerge"]
}

workflow "Trigger `automerge` on issue comment." {
  on = "issue_comment"
  resolves = ["automerge"]
}

workflow "Trigger `automerge` on push." {
  on = "push"
  resolves = ["automerge"]
}

action "automerge" {
  uses = "./.github/actions/automerge"
  secrets = ["GITHUB_TOKEN"]
}
