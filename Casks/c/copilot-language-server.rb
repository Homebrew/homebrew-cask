cask "copilot-language-server" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.561.0"
  sha256 arm:          "fa1d9d3995d33c877233324ec3953cdaafa31ea884eff27b714c98abfa8f1e7e",
         intel:        "5c2cc26b0d346d15247d504792190dcf9fc8792f378ac1a7a7766efcb9623707",
         arm64_linux:  "d0002a22df152ff47c4f66b7c0f7243ff1a2b833c3f7eae6f9a4174c6a31ee2e",
         x86_64_linux: "caf0931c0a799b37683b4c0dcb7e9304d77896a43766d6a6095157bbeebd48bd"

  url "https://github.com/github/copilot-language-server-release/releases/download/#{version}/copilot-language-server-#{os}-#{arch}-#{version}.zip"
  name "GitHub Copilot Language Server"
  desc "Language Server Protocol server for GitHub Copilot"
  homepage "https://github.com/github/copilot-language-server-release"

  binary "copilot-language-server"

  # No zap stanza required
end
