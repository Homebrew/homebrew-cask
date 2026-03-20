cask "claude-code" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.1.80"
  sha256 arm:          "dbc25d38f0da28709fe22f248b08f80e73f2e43170dbedeff47bd8b97db8e737",
         x86_64:       "c34d5fd9f4992c323f028d8570e62d6d174b987712ac8c8b092a641a84bee2ac",
         x86_64_linux: "49fa3cf7aaab9d54066e85eaa11911b7d25c629a82af323a76b22db2029d4fa2",
         arm64_linux:  "82897d5ecd55a466a47161b21b417075e8149ca816001ba15796ff05371afdd5"

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
