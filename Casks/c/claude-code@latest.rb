cask "claude-code@latest" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.1.104"
  sha256 arm:          "185aabd6d16dacb01a6dd41fc8d8ae5ea78ac8a6a3683caa05b759c47b24de60",
         x86_64:       "f1ad0ee6ff3401aceb922cf85ccaf6672a8b894ced23d63ca149d918c01a471d",
         x86_64_linux: "f5fe84d4b8a5a322b83a8ae63ac117adb143d2a9a0bfd73a201a5201d6423869",
         arm64_linux:  "f0a79ec304334503a563c6d4618b0ea1fcbbe477a047dd3955e2078a3c5559c1"

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
