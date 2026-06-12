cask "claude-code@latest" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.1.174"
  sha256 arm:          "20c5380b4423be9963c510f5464cc1f443235a9b4423179f9c01f28021b81bad",
         x86_64:       "af2940ac236bf1bb64d174defe392d5a5cc835b1d18f351f71a68cb049755dfb",
         x86_64_linux: "08a7c90925cc622003a94b813ae0fc544c08776f6d890532f6212e15962899a8",
         arm64_linux:  "397896495a6cb90376e00797f1520af959b4ac1b9dddf7af9127b8cec1010071"

  url "https://downloads.claude.ai/claude-code-releases/#{version}/#{os}-#{arch}/claude",
      verified: "downloads.claude.ai/claude-code-releases/"
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
