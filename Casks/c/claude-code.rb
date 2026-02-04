cask "claude-code" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.1.31"
  sha256 arm:          "8ae572cf525b2eec2da17a9100355413c4d59a43c124733e5cf1356dc50a576a",
         x86_64:       "085e56afd75c861b37dc5269bb4c7277baa836cf6c0617c8d405cd570dc189d7",
         x86_64_linux: "ea0da67ac8554a11bdf1da9659ae2a29b497f3e4a36ba3e776c68b7a65f52fea",
         arm64_linux:  "0999b04ab563343c56ac1b8c335927aeab3ea3402d5bd85e061e6e0cb3226c26"

  url "https://storage.googleapis.com/claude-code-dist-86c565f3-f756-42ad-8dfa-d59b1c096819/claude-code-releases/#{version}/#{os}-#{arch}/claude",
      verified: "storage.googleapis.com/claude-code-dist-86c565f3-f756-42ad-8dfa-d59b1c096819/claude-code-releases/"
  name "Claude Code"
  desc "Terminal-based AI coding assistant"
  homepage "https://www.anthropic.com/claude-code"

  livecheck do
    url "https://storage.googleapis.com/claude-code-dist-86c565f3-f756-42ad-8dfa-d59b1c096819/claude-code-releases/latest"
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
