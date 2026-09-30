cask "claude-code" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.1.285"
  sha256 arm:          "51f09bd1e021d9fa8a1864c179799bd37cb39962a937935c5cf6823398e86db4",
         intel:        "24835f7ca4b4338c33ad21c98a3402d9c22f89b8055075d18828e97973844ec3",
         arm64_linux:  "24fac77749bed3d91365d6b6915aa4b824e14318ecb6bc17adbc192f01c9173d",
         x86_64_linux: "33dad1ec615a2e08cc78b494f05c110e49916de2c79d78ec8799ebf46b233d29"

  url "https://downloads.claude.ai/claude-code-releases/#{version}/#{os}-#{arch}/claude"
  name "Claude Code"
  desc "Terminal-based AI coding assistant"
  homepage "https://claude.com/product/claude-code"

  livecheck do
    url "https://downloads.claude.ai/claude-code-releases/stable"
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  conflicts_with cask: "claude-code@latest"

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
