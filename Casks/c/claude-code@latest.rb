cask "claude-code@latest" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.1.212"
  sha256 arm:          "09ecba2ab2df9b6ee5b0695e26f65dea60fb3b6af3d3542ee09f466838d1e574",
         x86_64:       "7681a0634c89fa4474e53c0c794e992944aebf3409a7a2b87ea9f9b0194ea341",
         x86_64_linux: "044a88cf3a5180776617fd3da1238dcbf9141ddec449a39cf7d2af1ac78e684e",
         arm64_linux:  "66e88634a8573a002702e6a9de0d80cb9bb7c9072f9e6f4486778539057dfd3c"

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
