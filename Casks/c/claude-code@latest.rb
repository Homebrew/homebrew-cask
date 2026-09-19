cask "claude-code@latest" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.1.278"
  sha256 arm:          "bd245662fb8a0e321b3bf133e930371d6563c387527885f30b2613aef3ba14d6",
         intel:        "c522425e3d42275d2ac2238757ef8ba7f80d165a934044ec5a7a5fd7d7b9950b",
         arm64_linux:  "7de6cab134e48321148e30182c98614118e8f4666819412bead45865190b34ed",
         x86_64_linux: "5c4735937844e84f8a93306e841a5b0e12252909b07870f789b190468da147ab"

  url "https://downloads.claude.ai/claude-code-releases/#{version}/#{os}-#{arch}/claude"
  name "Claude Code"
  desc "Terminal-based AI coding assistant"
  homepage "https://claude.com/product/claude-code"

  livecheck do
    url "https://downloads.claude.ai/claude-code-releases/latest"
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
