cask "claude-code@latest" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.1.284"
  sha256 arm:          "50a14c2f50f56668380fdda490167f1d3630d5cc18fb8aed3073c2c7ea7314fe",
         intel:        "79441b868935a11ed0630b2ee59327eda9f6a93bb8d470bd6633c03df76d2135",
         arm64_linux:  "3dd0f96d7ada463152d20300186f6cfc6ab94b57e218f49e3ac86db42ac695a6",
         x86_64_linux: "5cd90aabd83f8a15136c35aa37bb1d92b348993573316643dc3fe4e04afbf88f"

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
