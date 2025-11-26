cask "claude-code" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.0.54"
  sha256 arm:          "fd7e669fbf3a7eb55b1205259cc4e417038a565219e79c67a23f1594bd8d8716",
         x86_64:       "951684db7a3bf3ace33b44975fd00a9b1447326dfdaf8490a7dfb641a010d5a6",
         x86_64_linux: "5741a9e34e7cd89062085aceaacbe8c69497cebcc5552e7b8e76bc6e345ab982",
         arm64_linux:  "471fa2524dfe93836a46c560e9c64220ed5de00a0df4a95215826813e878d8d8"

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
