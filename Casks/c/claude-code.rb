cask "claude-code" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.1.79"
  sha256 arm:          "839b876b084f1859b838f452814c94a1c0ba1556b7c0e363e30542d281918664",
         x86_64:       "18ba1806d172c98929c07c4e7f1d0f0b6e06947c62c52385534723218d22d63c",
         x86_64_linux: "35561c56625d25507f4531ff8e88575df3a5e3574cffacffddcd48d2814d3c49",
         arm64_linux:  "cc2090a519df805819d6e0d8a49584fe7d527cc58c34aad894fbfe7a5df8a5bf"

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
