cask "copilot-language-server" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.569.0"
  sha256 arm:          "929df96da051c6dcac5c127ed610433a37e5032d86d40f0fcb3c6a44ed2cc1ad",
         intel:        "fb8ce6a48ce27b24ff69c4478eca659e85e3bab9afcf342c8867aea7e135903b",
         arm64_linux:  "f5b72e3fd206950c2de9a2e73e35c8b4a6f7f79e407a0f8c7d27ea65bfe3698d",
         x86_64_linux: "fb4c315e01265ad32f0d1fb43df75e4ed81fa501461c1161942a7488df40e757"

  url "https://github.com/github/copilot-language-server-release/releases/download/#{version}/copilot-language-server-#{os}-#{arch}-#{version}.zip"
  name "GitHub Copilot Language Server"
  desc "Language Server Protocol server for GitHub Copilot"
  homepage "https://github.com/github/copilot-language-server-release"

  binary "copilot-language-server"

  zap :not_required
end
