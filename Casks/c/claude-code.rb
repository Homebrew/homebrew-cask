cask "claude-code" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.1.30"
  sha256 arm:          "3ccc14f322b1e8da0cd58afc254fd5100eee066fa14729f30745e67a3f7979f7",
         x86_64:       "8a083696006483b8382ec0e47cd8f2e3223f3d2cab1a21c524fa08c082b5600e",
         x86_64_linux: "ada8f1cf9272965d38b10f1adb6cea885e621c83f7e7bb233008c721f43fad54",
         arm64_linux:  "45fbf35a1011b06f86170b20beb64c599db0658aac70e2de2410c45d15775596"

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
    "~/.claude",
    "~/.claude.json*",
    "~/.config/claude",
    "~/.local/bin/claude",
    "~/.local/share/claude",
    "~/.local/state/claude",
    "~/Library/Caches/claude-cli-nodejs",
  ]
end
