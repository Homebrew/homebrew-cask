cask "claude-code" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.0.19"
  sha256 arm:          "9493ebec1beb14f3b34da02fd62a95dc4371cd3779c05b03085c0f1cf4d0ddd0",
         x86_64:       "1d7cf91f1446da7a7e09d35082afca862e5bfd48b30042dcc5a3d9b3a7b82fcb",
         x86_64_linux: "76f5f6124a99572c153335a90f9f07c23506fa04bdbb57276af46d2174f10df8",
         arm64_linux:  "4fe76b0fea72a0c7b263b0a7a10508b384f4560d9e1dd9554746fbbaae2dd4f5"

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
