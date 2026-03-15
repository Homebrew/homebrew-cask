cask "fly" do
  arch arm: "arm64", intel: "amd64"

  version "8.1.0"
  sha256 arm:   "d2bc8ef99b8cf92e403b34f6e17faa98a1501f6cef2a3d216c387e7bad53bd24",
         intel: "328a408c4d9ac4ec8d576e6b69bb716b027927eb3b529a318694e33a866f7921"

  url "https://github.com/concourse/concourse/releases/download/v#{version}/fly-#{version}-darwin-#{arch}.tgz"
  name "fly"
  desc "Official CLI tool for Concourse CI"
  homepage "https://github.com/concourse/concourse"

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  binary "fly"

  # No zap stanza required
end
