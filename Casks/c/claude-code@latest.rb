cask "claude-code@latest" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.1.152"
  sha256 arm:          "43cb9361f7bc48c39214d5f125003b8de0ebde5cd6a1173e6b74fcdd10966d46",
         x86_64:       "e9ecf8da70518a4ff852baf36c9eac369762a4568ba3cd5078fa894303e39735",
         x86_64_linux: "5155bdca27f754aba0d2fe2f80336f5fd4793224561c234a723f0ccef654a8e8",
         arm64_linux:  "35ef2685c4f679b5c4610ef56b30a680b6d595b958b4fa5ec0bfa2852195f345"

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
