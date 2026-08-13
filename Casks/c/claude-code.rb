cask "claude-code" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.1.223"
  sha256 arm:          "fcbe0b8d47570c501302dd1ad31cc26ac2810f022c45fa253936a6961dee32bf",
         x86_64:       "350e657428a6d34f7cf71f6738c5ebb6a1952ccb12fc1747f64297e065b1846f",
         arm64_linux:  "60e83d8db0e894d0e54413e5e7daa256d180db660f51e139a51b614fc30cf3ac",
         x86_64_linux: "98226474f802e3094d6a86c5ade8883c16206d0fcb5c400b7401c800063e99d7"

  url "https://downloads.claude.ai/claude-code-releases/#{version}/#{os}-#{arch}/claude",
      verified: "downloads.claude.ai/claude-code-releases/"
  name "Claude Code"
  desc "Terminal-based AI coding assistant"
  homepage "https://claude.com/product/claude-code"

  livecheck do
    url "https://downloads.claude.ai/claude-code-releases/stable"
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  conflicts_with cask: "claude-code@latest"

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
