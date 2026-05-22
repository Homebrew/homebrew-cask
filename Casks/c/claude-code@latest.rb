cask "claude-code@latest" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.1.148"
  sha256 arm:          "f4a1860d3d9b01653dde4183e2f1216ca9e0c1a404dd63caa4edf07c904102aa",
         x86_64:       "7c52d8419cc22b8355c6309d4542df32b3f245d1a7c3329a30797244ef3c4629",
         x86_64_linux: "3b38836a1801a6397f8431c6a62b127ce47e3e9d103c1a700fca7f9c8ab5f8ac",
         arm64_linux:  "b53c29b1fe003372636048c16d57a74f1ca2c57d8413dd5b14e2ca77710823ed"

  url "https://storage.googleapis.com/claude-code-dist-86c565f3-f756-42ad-8dfa-d59b1c096819/claude-code-releases/#{version}/#{os}-#{arch}/claude",
      verified: "storage.googleapis.com/claude-code-dist-86c565f3-f756-42ad-8dfa-d59b1c096819/claude-code-releases/"
  name "Claude Code"
  desc "Terminal-based AI coding assistant"
  homepage "https://www.anthropic.com/claude-code"

  livecheck do
    url "https://storage.googleapis.com/claude-code-dist-86c565f3-f756-42ad-8dfa-d59b1c096819/claude-code-releases/latest"
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  conflicts_with cask: "claude-code"

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
