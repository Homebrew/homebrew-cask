cask "fly" do
  arch arm: "arm64", intel: "amd64"

  version "8.2.1"
  sha256 arm:   "cc3ab873229e48ffd7a43aae4e8e04625ad96de18037534cc97b8c8b577abca6",
         intel: "b9f7edf7f91e6201a76a4c9251afb4dd6712bb82b44a150181c41b90101b99df"

  url "https://github.com/concourse/concourse/releases/download/v#{version}/fly-#{version}-darwin-#{arch}.tgz"
  name "fly"
  desc "Official CLI tool for Concourse CI"
  homepage "https://github.com/concourse/concourse"

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on :macos

  binary "fly"

  # No zap stanza required
end
