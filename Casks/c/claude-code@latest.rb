cask "claude-code@latest" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.1.281"
  sha256 arm:          "a922981f6f3b55a251ef9f9dbaa0621a5f99cbcb5ca67f8a797476ccfc83f626",
         intel:        "a9355cbb0d291ce948efcf61a6ef397401672f64fa5e5e67bca092fed6cd9088",
         arm64_linux:  "dd27b36438a4fed1670cd29bad2fda6a73b628b6da55443e5c2f647fe6ed328f",
         x86_64_linux: "56fe3da88458465fb27d7e9299dddb3fead55750fb9c2de795f233b5eea6dce1"

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
