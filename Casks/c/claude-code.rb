cask "claude-code" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.1.308"
  sha256 arm:          "ca923c86ac84b30574a82331a05b6e066c27477a926ceaffe46a845a33e4dd37",
         intel:        "9a0bc140f5fb06e6366624d770371ef290e6731d1e84c4def5daf4df946d1b59",
         arm64_linux:  "fdd22e6cbb734d580f5664c48df4294eeec850218ff07f186f9af30426396ee1",
         x86_64_linux: "356733f185fa988e6bf3aa9a555269fdd167982a2e2a80d3c8a78037bb92ad58"

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
