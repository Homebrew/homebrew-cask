cask "fly" do
  arch arm: "arm64", intel: "amd64"

  version "8.1.1"
  sha256 arm:   "3142be17169c4faa7e1ff6a97e0b1a5b1a7f7012e65247a5b6cc12425f4f0bbf",
         intel: "50508de220b87aabd263052a0a32f9515c67a4006e1b2eea9e66dfc85604395f"

  url "https://github.com/concourse/concourse/releases/download/v#{version}/fly-#{version}-darwin-#{arch}.tgz"
  name "fly"
  desc "Official CLI tool for Concourse CI"
  homepage "https://github.com/concourse/concourse"

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  binary "fly"

  # No zap stanza required
end
