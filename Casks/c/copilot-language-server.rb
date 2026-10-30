cask "copilot-language-server" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.565.1"
  sha256 arm:          "e85fc4057af320716aea1b5c83cb829deeeff4ba1e61c5b2cba2651e4b09de3f",
         intel:        "82b7598b1e5daea35061438eac21def22b43c2bd4fde00e0107587ab5f078dbc",
         arm64_linux:  "c022f1b06ceffe4d40ea6aed8580d824a82eba5844672c940c56c9d0b57ad615",
         x86_64_linux: "4830c4d017a56d4b6bf37f92927accc15e21753fbf59f48dbd099a5d3872b49e"

  url "https://github.com/github/copilot-language-server-release/releases/download/#{version}/copilot-language-server-#{os}-#{arch}-#{version}.zip"
  name "GitHub Copilot Language Server"
  desc "Language Server Protocol server for GitHub Copilot"
  homepage "https://github.com/github/copilot-language-server-release"

  binary "copilot-language-server"

  zap :not_required
end
