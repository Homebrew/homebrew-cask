cask "fly" do
  arch arm: "arm64", intel: "amd64"

  version "8.3.0"
  sha256 arm:   "69a33b6f3dfa9c59af96442d1bd1fe054734305e5544bd2b7dd17641234dc4cb",
         intel: "64bcb98a5250ff5a3b227cf76bad6c40204d0c4c0b38c6711254a2d1edbe4b75"

  url "https://github.com/concourse/concourse/releases/download/v#{version}/fly-#{version}-darwin-#{arch}.tgz"
  name "fly"
  desc "Official CLI tool for Concourse CI"
  homepage "https://github.com/concourse/concourse"

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on :macos

  binary "fly"

  # No zap stanza required
end
