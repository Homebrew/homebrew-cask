cask "claude-code" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.1.185"
  sha256 arm:          "a280c23b210525218f5bd86f001c9dbc89b9e07410175c5a9355044bfadc0af1",
         x86_64:       "ade7a13c3027f754b4cdac80bcdd6ba470f7becb27cdcf8b6ba9a70cf9e77af7",
         arm64_linux:  "db880812272504455df73160d92fadf9370eda684c219cebf8e62b0a262cb2f8",
         x86_64_linux: "e1246338699f04ee0e627dee3f6d4ed7a0bab48e0514bde69c6dad43bc303952"

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
