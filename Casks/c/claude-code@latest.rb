cask "claude-code@latest" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.1.136"
  sha256 arm:          "9ef618487dc9e0cb766e8d0d51cd5fd3d06c3d038f4f04f3e714791f32a3cda5",
         x86_64:       "d540e416e7f8562c99c336ba703d3374d41f79be6d1a93f1c6bd3a88686d4ae7",
         x86_64_linux: "d8e5337966ae43b1832d1368823bddc77aba08a5f9ffabe44c75e34a6b83a8bb",
         arm64_linux:  "1d5e30b263959f8c32bf11532601ad468948c560c4c49236eda90da1bf8285ea"

  url "https://storage.googleapis.com/claude-code-dist-86c565f3-f756-42ad-8dfa-d59b1c096819/claude-code-releases/#{version}/#{os}-#{arch}/claude",
      verified: "storage.googleapis.com/claude-code-dist-86c565f3-f756-42ad-8dfa-d59b1c096819/claude-code-releases/"
  name "Claude Code"
  desc "Terminal-based AI coding assistant"
  homepage "https://www.anthropic.com/claude-code"

  livecheck do
    url "https://storage.googleapis.com/claude-code-dist-86c565f3-f756-42ad-8dfa-d59b1c096819/claude-code-releases/latest"
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
