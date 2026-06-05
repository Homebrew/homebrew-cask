cask "claude-code@latest" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.1.165"
  sha256 arm:          "19ed536dd0e94dade3f8c49c3c6ddeff22b06f5d5c86b30f1c88eeb9a04f45e5",
         x86_64:       "3cb50cb3c9a065bd2d88250ceb3f2647ce16f89f384dede1f7de2676fa526af0",
         x86_64_linux: "d34b0caadd25eb82d8e08ca103b648291b4defef53193f572847a736e2aaf4d8",
         arm64_linux:  "ff2e060827f9f0214a77133206c4539a6477ec1f4fddb492b02255a0679642fd"

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
