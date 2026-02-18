cask "claude-code" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.1.47"
  sha256 arm:          "73795e6d8f0aa4e07d8f20d351e0f84e515db2ce73b69770650bc3d5d582ef73",
         x86_64:       "b62889b0d4d1f07bf76ebe89b6d1b1b85690977a939307bc896cd76748df3031",
         x86_64_linux: "9c48bde67bda274d65c3d65da4f78e21a458ce722a8955edcc272d32c98c74a3",
         arm64_linux:  "9255d330db19353d73b3975b0bc2ebaddd1cf002a62fa15b95a6bbfec8a9be18"

  url "https://storage.googleapis.com/claude-code-dist-86c565f3-f756-42ad-8dfa-d59b1c096819/claude-code-releases/#{version}/#{os}-#{arch}/claude",
      verified: "storage.googleapis.com/claude-code-dist-86c565f3-f756-42ad-8dfa-d59b1c096819/claude-code-releases/"
  name "Claude Code"
  desc "Terminal-based AI coding assistant"
  homepage "https://www.anthropic.com/claude-code"

  livecheck do
    url "https://storage.googleapis.com/claude-code-dist-86c565f3-f756-42ad-8dfa-d59b1c096819/claude-code-releases/latest"
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

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
