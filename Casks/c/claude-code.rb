cask "claude-code" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.84"
  sha256 arm:          "e2b953f49edb6e4c129dcdc0a8274184cab68d11e75a667d17bb400885ceaa18",
         x86_64:       "9c512263fb8eecfe00d59abec16048a67ddd614c56c4fe4df39c1a41ea6901e0",
         x86_64_linux: "8431fc62eacfa9dac366f61de2e118a8b1601c2f9a7e6dc3789b99f6dfc45fac",
         arm64_linux:  "535524cb01b39288229287dd9ed4a238fd37bfd63448b3553f61347b566042df"

  url "https://storage.googleapis.com/claude-code-dist-86c565f3-f756-42ad-8dfa-d59b1c096819/claude-code-releases/#{version}/#{os}-#{arch}/claude",
      verified: "storage.googleapis.com/claude-code-dist-86c565f3-f756-42ad-8dfa-d59b1c096819/claude-code-releases/"
  name "Claude Code"
  desc "Terminal-based AI coding assistant"
  homepage "https://www.anthropic.com/claude-code"

  livecheck do
    url "https://storage.googleapis.com/claude-code-dist-86c565f3-f756-42ad-8dfa-d59b1c096819/claude-code-releases/stable"
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  depends_on macos: ">= :catalina"

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
