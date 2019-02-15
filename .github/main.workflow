workflow "Automatically merge version bump PRs." {
  on = "status"
  resolves = ["automerge"]
}

action "automerge" {
  uses = "./.github/actions/automerge"
  secrets = ["GITHUB_TOKEN"]
}
