cask "claude-code" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.1.4"
  sha256 arm:          "dbd88024fe621e45452fbe2d17e13803f46df2d4e3729cf55ace0edb7c6f9565",
         x86_64:       "3ef0ecc2a0cf579fc74dcdcea6febb9023c0b89e9213ab2e9217ffc9b56e657b",
         x86_64_linux: "de877bba3abc9b3b2fa2290194d4d78edb2aecfdfea7cf86419420571b30eb1d",
         arm64_linux:  "938e2da36bec5723195fa18c28d7de44dcab5c4221f9555e84dae3edd892ee7a"

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
