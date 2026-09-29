cask "copilot-language-server" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.551.2"
  sha256 arm:          "56d45abf26a8f58913f40a347f09a6ba2aa030d46a127a227e4fe6e85cbb1fae",
         intel:        "fa31aba3a4a608a3bf6c7557a101f31f004e03d6b186870b19ab92e7c203028c",
         arm64_linux:  "bd2c232c6112dc6d87fff36360e6ecd6d357c8e5dc4ba0ed82646ba5219840ea",
         x86_64_linux: "9c54d39d431bebb50498eb23ccd02b7b688a205105c20f83cfe5e5e487bc896c"

  url "https://github.com/github/copilot-language-server-release/releases/download/#{version}/copilot-language-server-#{os}-#{arch}-#{version}.zip"
  name "GitHub Copilot Language Server"
  desc "Language Server Protocol server for GitHub Copilot"
  homepage "https://github.com/github/copilot-language-server-release"

  binary "copilot-language-server"

  # No zap stanza required
end
