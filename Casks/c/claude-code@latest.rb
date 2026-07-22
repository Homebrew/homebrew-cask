cask "claude-code@latest" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.1.218"
  sha256 arm:          "71abaff59312c9a9b6a1d818365048b42e4e95cc521a823660eded3e0880d9b7",
         x86_64:       "9862b74a083e8a4ed572f99cbd4895185e0dd5a0a601affb0fb8e43d8d1f40e6",
         x86_64_linux: "e12071751a9336b8af1012c103358ff04ac18f9aaff4a738cff7ba5cdfaf63f2",
         arm64_linux:  "295fd30481bd03b38450fdec2a6e25bb6472c2074f04b0c4a566cd5988f230bf"

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
