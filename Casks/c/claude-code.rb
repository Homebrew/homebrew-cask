cask "claude-code" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.0.17"
  sha256 arm:          "0de0eb50863ac755437a28b1a350185dd83c239a2b30d5c430856097665eab3a",
         x86_64:       "ebcf976b7cec789cb994398a25d294f3cc800a4c16366f5e68be9584f3ef6017",
         x86_64_linux: "6e01da92be5fca1ce3dab6ef307bcf8d68a99809a146ab656f82550f6b6f0366",
         arm64_linux:  "96933992c1425415df49a2f4cf3966d455fe86d1fe21e1967745f504f1f9b059"

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

  caveats <<~EOS
    Claude Code's auto-updater installs updates to `~/.local/bin/claude` and
    not to Homebrew's location. It is recommended to disable the auto-updater
    with either `DISABLE_AUTOUPDATER=1` or
    `claude config set autoUpdates false` and use
    `brew upgrade --cask #{token}`.
  EOS
end
