cask "claude-code" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.0.65"
  sha256 arm:          "450c94c4c0d656c4d332146411543de976c6b4401637807e6613f350fb8cb8e3",
         x86_64:       "e1040de90bd4846ea36992c9b0cc9507410c0fc0a5a3c2a906a938b8d61f7315",
         x86_64_linux: "cfac3d6fe993622b6afcee02631e24e6f990c924733e63be9b7482a56627a9ca",
         arm64_linux:  "e336a5542be2ea44e8aae5a8f924553519b8c3247f3c5d82206a725afbc048c7"

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
