cask "claude-code@latest" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.1.200"
  sha256 arm:          "e6fd52c0c72ff83663bf3cbfc833b45faaba2b9a9952863279dc3cfc1a0492b6",
         x86_64:       "b0a4dd56a91b24e18c9f83b50a7f19989ecbaba3d2ae4bf6f3f95f4033a87371",
         x86_64_linux: "26e42a3268979f0c5a3b6c0f375b15dd7decfaae4bb02774390d6a23f4cd51ad",
         arm64_linux:  "434ab85cd215ef7d5cd7afc1d02c0a95c0521357d8819f70ca77b6b4b1c5273d"

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
