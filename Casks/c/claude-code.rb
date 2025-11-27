cask "claude-code" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.0.55"
  sha256 arm:          "08a11782ca5b70c5f0cca4ea4d8b6a54ea0209469e2b561db14c6e222da23b3f",
         x86_64:       "eb9b9cd96e190902a1b03a031fcc44fc9f7869a0524860abd520ba5b4a361b37",
         x86_64_linux: "49de548ec2e5e994c4c56b0b47060c4c2bf06fefd7f85889b951518aa84cfa05",
         arm64_linux:  "24c42906a00a3751469d88858d38b2b8e0f4dc95847f9737056cb87a7189733b"

  url "https://storage.googleapis.com/claude-code-dist-86c565f3-f756-42ad-8dfa-d59b1c096819/claude-code-releases/#{version}/#{os}-#{arch}/claude",
      verified: "storage.googleapis.com/claude-code-dist-86c565f3-f756-42ad-8dfa-d59b1c096819/claude-code-releases/"
  name "Claude Code"
  desc "Terminal-based AI coding assistant"
  homepage "https://www.anthropic.com/claude-code"

  livecheck do
    url "https://storage.googleapis.com/claude-code-dist-86c565f3-f756-42ad-8dfa-d59b1c096819/claude-code-releases/stable"
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
