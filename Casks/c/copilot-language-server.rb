cask "copilot-language-server" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.556.0"
  sha256 arm:          "369bea897e53627a505d41045f58ce937b85d5c26b1c426cf1762690d99dbe22",
         intel:        "67d0c3e698b2602b70584025a06681049b12bcae5aa63944eab8a5e935325e4a",
         arm64_linux:  "6d215b4796a88efafa4f580af66204aaf3e7735e39c5727864b3394cd34a42ad",
         x86_64_linux: "714087834355debe4bdc973e40d4eebb28ebbd405a5a3a824b6dff59aada1e15"

  url "https://github.com/github/copilot-language-server-release/releases/download/#{version}/copilot-language-server-#{os}-#{arch}-#{version}.zip"
  name "GitHub Copilot Language Server"
  desc "Language Server Protocol server for GitHub Copilot"
  homepage "https://github.com/github/copilot-language-server-release"

  binary "copilot-language-server"

  # No zap stanza required
end
