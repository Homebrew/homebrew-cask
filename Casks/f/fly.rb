cask "fly" do
  arch arm: "arm64", intel: "amd64"

  version "8.2.0"
  sha256 arm:   "8ab4c5f2a7f044e388a52e81f2573b8a2b6daa753f9140f15134ba856c1c6bdf",
         intel: "8e326a48194676e25e90d638e554b672c8312eb1f0b1ad21ca4f8de30636d6bc"

  url "https://github.com/concourse/concourse/releases/download/v#{version}/fly-#{version}-darwin-#{arch}.tgz"
  name "fly"
  desc "Official CLI tool for Concourse CI"
  homepage "https://github.com/concourse/concourse"

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on :macos

  binary "fly"

  # No zap stanza required
end
