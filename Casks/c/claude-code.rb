cask "claude-code" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.0.49"
  sha256 arm:          "acb646c3786e280399c0132ebf89152b6b0fcf6d6453b41ec04b24fb95ed9797",
         x86_64:       "e685140632c6b100b636c02a6b5beb27a2273363032140d56f2f7a679dfc5908",
         x86_64_linux: "82023cb9149ad866c54a8aa4165e148bcf9674c3b11a3885cae898d2ae64ef8b",
         arm64_linux:  "9b8d520543d38b741a868127639df6bddecc837a338021b6ff75d97ac1e059d3"

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
