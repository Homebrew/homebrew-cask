cask "copilot-language-server" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.573.0"
  sha256 arm:          "e326ef360cf1fac95ee2bded4f9efe081dc1a9c81f58c3e5de979e0f82d38196",
         intel:        "9224ab3d261649ddc2180832fdf071c78299a9ba087cc10b78ec179f73bd7b58",
         arm64_linux:  "c6d777f92e26cbb387463bdca4d6a807ba4ab8bd3fd589b1ecd13bca87469d76",
         x86_64_linux: "72de86365fd9bc7a622746053d1f8ea9c15ae879b6f211ce819b5e7cd05f7e9e"

  url "https://github.com/github/copilot-language-server-release/releases/download/#{version}/copilot-language-server-#{os}-#{arch}-#{version}.zip"
  name "GitHub Copilot Language Server"
  desc "Language Server Protocol server for GitHub Copilot"
  homepage "https://github.com/github/copilot-language-server-release"

  binary "copilot-language-server"

  zap :not_required
end
