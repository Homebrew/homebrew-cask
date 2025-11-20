cask "claude-code" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.0.47"
  sha256 arm:          "990bf8069ebb512e68a01b1ab64c8c1a656ef7cdb2bfd271e0712119e46cf980",
         x86_64:       "ec11942887da616486483ce539135353936cab89cc6ef21fac88c5d84809df92",
         x86_64_linux: "a3c203186b3b098691ef96a052c2c3cc205660c45802f2c64dd0f8bf7309972e",
         arm64_linux:  "2bf23fb2ba6f65a933cd7df799c02a303862444db61584e842d49b69b4b6765b"

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
