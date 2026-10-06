cask "claude-code@latest" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.1.291"
  sha256 arm:          "9a1d2ed6bb4421e8fc80c892c0413f293be3ee50ae3d7dda1a7622197a056690",
         intel:        "223bf4de0e8f38cb254fc38f82fda09f9fcfd4e2aac62b59ef7e7f1960a45ddd",
         arm64_linux:  "c18473a04cc4f077435d5d9081f09ebea46e699eb2825cea64741c4bccb87647",
         x86_64_linux: "078fad28d0297c9a25d306b635b2d8816c6839347520f29eb54ffea5d56142fb"

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
