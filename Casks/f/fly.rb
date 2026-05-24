cask "fly" do
  arch arm: "arm64", intel: "amd64"

  version "8.2.2"
  sha256 arm:   "eaeafbc3b3c9671af67f2de60301dd496ca54063c7b6bc9764495daab4a77468",
         intel: "761c6a6b816a633724ea26b2267d9d42937a173f81838bb5bf665c54437ea105"

  url "https://github.com/concourse/concourse/releases/download/v#{version}/fly-#{version}-darwin-#{arch}.tgz"
  name "fly"
  desc "Official CLI tool for Concourse CI"
  homepage "https://github.com/concourse/concourse"

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on :macos

  binary "fly"

  # No zap stanza required
end
