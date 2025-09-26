cask "claude-code" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.126"
  sha256 arm:          "1fa94c71b64d4c6189c695786e9164867ebc255b8d299066a3fb4339146866b6",
         x86_64:       "dd5976e5619539175d7a75a69bfc32673111de2ec2337437baa6e0e962c376ea",
         x86_64_linux: "effbd2a95ebd5c413cdba37d3490415043d376b595140bfa02495855c6abab32",
         arm64_linux:  "07d0a94fef37e44841eeee666ffa2d7e07484d0b944c98f92cdbb7d190be7bfa"

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
    `claude config set -g autoUpdates false` and use
    `brew upgrade --cask #{token}`.
  EOS
end
