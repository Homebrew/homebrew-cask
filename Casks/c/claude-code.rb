cask "claude-code" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.1.84"
  sha256 arm:          "c02d911ff13f8ceccb1f6662bf211f3cd9f29d5a46f031c3cc40654eb759aa29",
         x86_64:       "da5ed2ee1b0bcf65c2088e79bc65388ec85edc41041fc6ca7c27330f2e201085",
         x86_64_linux: "c6872aa8db94f303bc6a4482664e40d3288dfc989c89ba268473ed32e3055878",
         arm64_linux:  "5c868174b44439e51c74ff084c306856c41779615250d5bbdaa5d10056362814"

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
        "~/.claude.json*",
        "~/.config/claude",
        "~/.local/bin/claude",
        "~/.local/share/claude",
        "~/.local/state/claude",
        "~/Library/Caches/claude-cli-nodejs",
      ],
      rmdir: "~/.claude"

  caveats <<~EOS
    This cask tracks the stable release channel. In-app update notifications
    default to the latest channel regardless. To align notifications with this
    cask, set the auto-update channel to "stable" via /config or in
    ~/.claude/settings.json:
      https://code.claude.com/docs/en/setup#configure-release-channel
  EOS
end
