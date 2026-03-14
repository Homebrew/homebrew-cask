cask "fly" do
  version "8.1.0"
  sha256 "d2bc8ef99b8cf92e403b34f6e17faa98a1501f6cef2a3d216c387e7bad53bd24"

  url "https://github.com/concourse/concourse/releases/download/v#{version}/fly-#{version}-darwin-arm64.tgz"
  name "fly"
  desc "Official CLI tool for Concourse CI"
  homepage "https://github.com/concourse/concourse"

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  binary "fly"

  # No zap stanza required
end
