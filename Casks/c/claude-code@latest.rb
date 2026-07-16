cask "claude-code@latest" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.1.211"
  sha256 arm:          "5a728a76198b6eca7f3c7cdbff43bab44b77b48c2108f7a3107d889773382629",
         x86_64:       "33049eb14cf4702b992b7eda41ec077fc6e76539f7fd046e6d32538757235da4",
         x86_64_linux: "8272c8a474ac9ea1bc35f19b9f7c7e7dc4dc4eb6d5ad3e484b19335ac72446b2",
         arm64_linux:  "1fff7e8f947c07b19d10b1fbf714b7e547e9536253b9b58230d8adbc4624f867"

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
