cask "claude-code" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.1.144"
  sha256 arm:          "9886baa4ec4c455f86108464f121732193ee76e5dfceb031005f59f31276a5df",
         x86_64:       "d225c07b713615ceda54cebcfb6280942b113c64dccbaa114b12204e917087f8",
         arm64_linux:  "c8ccccbfce12d684588bd3af366394132f614dcf3c86beb2066f86bde2704513",
         x86_64_linux: "147480774472e5720fd5e83617b3e9299344e7213efa84c326b25bd5a0f20b4e"

  url "https://downloads.claude.ai/claude-code-releases/#{version}/#{os}-#{arch}/claude",
      verified: "downloads.claude.ai/claude-code-releases/"
  name "Claude Code"
  desc "Terminal-based AI coding assistant"
  homepage "https://claude.com/product/claude-code"

  livecheck do
    url "https://downloads.claude.ai/claude-code-releases/stable"
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

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
