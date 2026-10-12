cask "copilot-language-server" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.552.0"
  sha256 arm:          "2bda991654f9f23173224f14ab477af8c01d4b6071e495671d8b5da4386e9649",
         intel:        "e87a5252fc7f49d221984838ffcb7ee4f4254a501fdb5390cb80229c9b4b0c7d",
         arm64_linux:  "9328ac3a815ae9a924437fa200f74052b4369ea7bce9498f758774342fff3ad5",
         x86_64_linux: "f941950a2497740b3ceee1b43a0ec7f19077c23e96e6521dae0a8e54d567a2f7"

  url "https://github.com/github/copilot-language-server-release/releases/download/#{version}/copilot-language-server-#{os}-#{arch}-#{version}.zip"
  name "GitHub Copilot Language Server"
  desc "Language Server Protocol server for GitHub Copilot"
  homepage "https://github.com/github/copilot-language-server-release"

  binary "copilot-language-server"

  # No zap stanza required
end
