cask "claude-code@latest" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.1.113"
  sha256 arm:          "189b1c94ace3f3e90cd4836562cbb7f1eba69148b1353ba92a38ff966cb6cb00",
         x86_64:       "5b9d04c3bf924d41962754c4c9371c9439a42ddeb838faeb01b63b074673e14e",
         x86_64_linux: "a81f7726b3b6b910e50c08a09f0090cb60714695d6d01bfe8698ff16cda9b87d",
         arm64_linux:  "7656fabaa2ba449a88cd3757827c62886a6f2cf7c050ef9d8357e6351da48ee1"

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
end
