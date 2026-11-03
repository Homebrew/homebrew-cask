cask "claude-code@latest" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.1.317"
  sha256 arm:          "09f153b46b5df9e8b3454716d682a91901de020cbca630f61dec1a015b32b5e9",
         intel:        "01c714bc7febdb008f28e3f6facb1dc37e46a4d8fa8db58df2e281ee51cb333c",
         arm64_linux:  "563a0d60ad0c223d9415768210997acb0f7134ea51dc3c238e88bc2e18ddeefa",
         x86_64_linux: "eb224419e344575faa4a1f39b290b649425a10cd5ee2ef1d003480cd9ae57eb0"

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
