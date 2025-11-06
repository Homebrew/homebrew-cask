cask "claude-code" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.0.35"
  sha256 arm:          "4cd1ae9a4b31ded38e083a6ab7f4b84f2164422ac3c6ef8d1847229f48b0bb29",
         x86_64:       "4a4524f97ac842497dca5d5e48a474fac6dc080f4ab4a5bd32f5b1faebc243d7",
         x86_64_linux: "8aee0d1730110f945b1e028158d34a0d34e59dde15d51200130e92d061798e38",
         arm64_linux:  "574f22a3155deceb9c8fdf8d7f3235085db939a2cc03cd21bde660428daddd93"

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
