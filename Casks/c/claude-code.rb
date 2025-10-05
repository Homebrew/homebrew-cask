cask "claude-code" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.0.8"
  sha256 arm:          "5b450eb2986cf373f8df0553851ef1bb6f678422fa21c4f1632eb67c22f76f93",
         x86_64:       "034c26346600cdc30342808fa719dd087db5c70a60bf3ab6c1383e50c01ca5a1",
         x86_64_linux: "dc896f5e87d63054ae2fec370a49710f5e4cb017950d1199c7084ab229837282",
         arm64_linux:  "496468e19659ac3d8b3c7918f4cffee40cc5e5a8221bb7620bcedcb84917b938"

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
