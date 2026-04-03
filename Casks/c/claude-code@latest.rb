cask "claude-code@latest" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.1.91"
  sha256 arm:          "7433d76d3ec5d223a340e21d7a05f3d481d89999f228113168ad5d64c66fd376",
         x86_64:       "47409dc476c199711d5c776cf359773f75cb9dc72ce7494a4e4cb100520e8ab4",
         x86_64_linux: "01b74e1b02e3330940b3526d2f6e00bf32f7fd9e6b3861be6a61e01cfd7296e6",
         arm64_linux:  "dddba100b352ea6d06aa7e036d5afe49749edddd1309a4aa22e47049fafcadf9"

  url "https://storage.googleapis.com/claude-code-dist-86c565f3-f756-42ad-8dfa-d59b1c096819/claude-code-releases/#{version}/#{os}-#{arch}/claude",
      verified: "storage.googleapis.com/claude-code-dist-86c565f3-f756-42ad-8dfa-d59b1c096819/claude-code-releases/"
  name "Claude Code"
  desc "Terminal-based AI coding assistant"
  homepage "https://www.anthropic.com/claude-code"

  livecheck do
    url "https://storage.googleapis.com/claude-code-dist-86c565f3-f756-42ad-8dfa-d59b1c096819/claude-code-releases/latest"
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  conflicts_with cask: "claude-code"

  binary "claude"

  zap trash: [
        "~/.cache/claude",
        "~/.claude.json*",
        "~/.config/claude",
        "~/.local/bin/claude",
        "~/.local/share/claude",
        "~/.local/state/claude",
        "~/Library/Caches/claude-cli-nodejs",
      ],
      rmdir: "~/.claude"

  caveats <<~EOS
    Note: the in-app upgrade command shown in update notifications is hardcoded to
    "brew upgrade claude-code" rather than "brew upgrade claude-code@latest".
  EOS
end
