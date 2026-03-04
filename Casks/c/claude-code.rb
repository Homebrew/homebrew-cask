cask "claude-code" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.1.68"
  sha256 arm:          "31b1e5fa5e47480a62484a44afbc97f9159dc1c7d0d1a4b2f41145b9b3c2ccfc",
         x86_64:       "4c7814f7d9b1e89f152ab6026c15d387eb11da50a423696c9324c284c8a47d1f",
         x86_64_linux: "969a20cc4a9d96e3449090ed394efe4846e920cec5d12cb9ce8bdef5e1abe575",
         arm64_linux:  "48c631271df8ef53a349975f276f1e2d0ed7f19ff889040b6546f16e1df1c25b"

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
