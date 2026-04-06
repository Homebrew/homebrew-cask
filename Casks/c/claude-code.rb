cask "claude-code" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.1.85"
  sha256 arm:          "bad5882c5fcd97e39f8c2f2b9a4c3fa3890d1a39eecaa94a16fd75d6701ad7b3",
         x86_64:       "ab4ca23bca1c70a3e0bbfd8cde1ce8e0f768665988be1ddb7ecbb6a9f3b9fc78",
         x86_64_linux: "ff0b23dba11c97a53386c61ebe47d46d768a8ad33f98c7d22186c9a63f179f4d",
         arm64_linux:  "b23709a394d1e3d977f9f3025bdaa1b1285715d10a48957e587952d8ef3a27f4"

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
