cask "claude-code" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.1.74"
  sha256 arm:          "48a07e2887cd4879219d319e48ac5cc6e2098238c7c0abe01c57a35430941cb7",
         x86_64:       "31fa7ebd424719406cb123f95781c5e795f7a9899611ff1a9213092458d346eb",
         x86_64_linux: "e5613610deee76cd32bc9b8e9e364da074fcd880705f837a4c9ee1ec38f9b73b",
         arm64_linux:  "bfa883897a26433c5132a641b32d1fce00e1eff04a61bf52cd9ab85aeac2ea95"

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
        "~/.claude.json*",
        "~/.config/claude",
        "~/.local/bin/claude",
        "~/.local/share/claude",
        "~/.local/state/claude",
        "~/Library/Caches/claude-cli-nodejs",
      ],
      rmdir: "~/.claude"
end
