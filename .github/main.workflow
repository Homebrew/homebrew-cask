# This is currently always stuck on “Waiting to run”, try enabling it again in the future.
# workflow "Trigger `automerge` on status update." {
#   on = "status"
#   resolves = ["automerge"]
# }

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
  secrets = ["HOMEBREW_GITHUB_API_TOKEN"]
}

workflow "Sync templates and CI config." {
  on = "push"
  resolves = ["sync_templates"]
}

action "master" {
  uses = "actions/bin/filter@master"
  args = "branch master"
}

action "sync_templates" {
  needs = ["master"]
  uses = "./.github/actions/sync"
  args = "/templates.rb"
  secrets = ["HOMEBREW_GITHUB_API_TOKEN"]
}

workflow "Sync labels." {
  on = "label"
  resolves = ["sync_labels"]
}

action "sync_labels" {
  uses = "./.github/actions/sync"
  args = "/labels.rb"
  secrets = ["HOMEBREW_GITHUB_API_TOKEN"]
}
