cask "claude-code@latest" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.1.92"
  sha256 arm:          "6d1b9657727dce81332b3cda11bfe0a8c83e2392e3c062a31022e10b0e71cdd1",
         x86_64:       "d422b5cc974b3bc4b28f698144fd0316f3e17774babe0bc1eb76c2bb0858d0aa",
         x86_64_linux: "e22324514967ff2d5e9f91f0ee37e4675bf8b6dfec27fafb19cb25cc5b23fcaf",
         arm64_linux:  "08deb3d56477496eb92e624f492e25b123f4527dd5674f71afff58a48eccd953"

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

  caveats <<~EOS
    Note: the in-app upgrade command shown in update notifications is hardcoded to
    "brew upgrade claude-code" rather than "brew upgrade claude-code@latest".
  EOS
end
