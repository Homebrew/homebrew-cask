cask "claude-code@latest" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.1.275"
  sha256 arm:          "1b8177fe49f2be5bacc75e89b5f88fa7454791283113ace16a453fe9171d179b",
         intel:        "c8cd8e64eac92066e009b2d6189ecac20be0459f9b9d11f0c71e42e9cffd8127",
         arm64_linux:  "efcefb7448c3d12a045b5c53e0fb4e8859ff99abe90d67f83900c4f0ffd517ed",
         x86_64_linux: "13586f3150a7ca1655f36e1dba759fb404e0f7cf7021d4a3dcd5e6f604e56156"

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
