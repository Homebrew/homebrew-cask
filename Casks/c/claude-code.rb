cask "claude-code" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.0.58"
  sha256 arm:          "aefd8d6c94a2477b3c5d9609bb0ab1103a60cba2ffbaede3b35509a9a76a9b4d",
         x86_64:       "684fc9383e0e22ad10285f968db0e8b246d807a6632c1e5ac24e2109bf91b79a",
         x86_64_linux: "10b7d4c0ef0f8d728f171577dd95ae121e40511a56f60b48533e3fcce792f1dc",
         arm64_linux:  "4fbe21f0044dc451ba0106a7ec75c74f920fa8eea99496e892958fa1a49bec29"

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
