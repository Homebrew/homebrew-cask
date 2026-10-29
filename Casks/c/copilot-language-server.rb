cask "copilot-language-server" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.564.0"
  sha256 arm:          "1913108f56bfe906d9371169c4eac256f5e5d5f1b42938f5c9f1a93bc35dcd51",
         intel:        "89072d864e0f5689ca91a71eb58c826a8b3361de8c0141994a4af1ee6ccc5468",
         arm64_linux:  "08608860f83c0a96f97c8233ad3cf9c0e698c4c8245c343cdb09cc25127aa303",
         x86_64_linux: "c805f12bb1f6a02faebab9d0522ac00eb4402badd4bfb1d9832023576b591a87"

  url "https://github.com/github/copilot-language-server-release/releases/download/#{version}/copilot-language-server-#{os}-#{arch}-#{version}.zip"
  name "GitHub Copilot Language Server"
  desc "Language Server Protocol server for GitHub Copilot"
  homepage "https://github.com/github/copilot-language-server-release"

  binary "copilot-language-server"

  zap :not_required
end
