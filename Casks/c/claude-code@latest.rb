cask "claude-code@latest" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.1.265"
  sha256 arm:          "164b09eb800dedb9bb06304129fbf07743ab9db972ae07333ef4f18cde0cb8d5",
         intel:        "42c267a37f3db40af9e453a315edf91d423cb96ad147353e2c187769931b1af8",
         arm64_linux:  "fc1f75b115d6a398f6437df0e00142b073c23633b040618758a935f634427c88",
         x86_64_linux: "e14738e3a58d1fc6ccc23b9c919451b4846bc27074a3fb48db976a7d595bdeeb"

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
