cask "claude-code@latest" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.1.301"
  sha256 arm:          "1f04c69e1c24e4d0a716a863af0aad8fc64d49a499334c29701f073700276b99",
         intel:        "3439427bfce962fddcf557c5a058ca914fa63e06fee894f8e12a3f10e04d1871",
         arm64_linux:  "1e119036a802d359ba5f9886428e031586e8796f7a858d5a8ee179ac7b8604f0",
         x86_64_linux: "bc1aad9982c7b59c7d889ff92595d61cf46e0a6eae074cb551d932a989bcd222"

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
