workflow "Trigger `automerge` on status update." {
  on = "status"
  resolves = ["automerge"]
}

workflow "Trigger `automerge` on pull request update." {
  on = "pull_request"
  resolves = ["automerge"]
}

action "automerge" {
  uses = "./.github/actions/automerge"
  secrets = ["GITHUB_TOKEN"]
}
