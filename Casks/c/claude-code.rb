cask "claude-code" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.0.70"
  sha256 arm:          "53db49ca5371a7d97224402622dccac3fe16d44e5e24afdb7331a74f84563cee",
         x86_64:       "363d5dc88920c127501f146e2b8428019f645138ce32f61b7dc0adc7c9fbd19d",
         x86_64_linux: "377d5c05863af49a1d8cb5c15ef023e1e36f5e2bc9fe09c0f0a9b3437a8a4bc4",
         arm64_linux:  "b9e99d2b01af5bc802adac761fbd73d54dd7cc596a2d94c1473005bf56df8773"

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
