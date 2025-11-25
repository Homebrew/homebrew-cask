cask "claude-code" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.0.53"
  sha256 arm:          "28c3ad73a20f3ae7ab23efa24d45a9791ccbe071284f1622d4e5e2b89c4a15b7",
         x86_64:       "a27f7b75a51514658640432a0afec8be130673eb7dbecc9a4d742527dd85d29a",
         x86_64_linux: "9c4cc19e207fb6bf7ea140a1580d5ed0dd0a481af471f23614d5a140a4abf1c6",
         arm64_linux:  "a5d4044034f3b63c38379bc2dd4067a4dd3c8ec48965ba8e66e3623774a93b72"

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
