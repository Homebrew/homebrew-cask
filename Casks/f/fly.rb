cask "fly" do
  arch arm: "arm64", intel: "amd64"

  version "8.2.5"
  sha256 arm:   "a3f5e04c372db18b83baf3423d0497a12a20057cb8dfb1c88c0bf1d616ce8f1b",
         intel: "1fcbb8bc50028d8d1f91e914885f4abf246111a2dcac2e28abe36cdc0df6e4ff"

  url "https://github.com/concourse/concourse/releases/download/v#{version}/fly-#{version}-darwin-#{arch}.tgz"
  name "fly"
  desc "Official CLI tool for Concourse CI"
  homepage "https://github.com/concourse/concourse"

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on :macos

  binary "fly"

  # No zap stanza required
end
