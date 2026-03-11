cask "claude-code" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.1.73"
  sha256 arm:          "5d402f804dde699c3824e93fefc198d81a52947a43e578286ea01cea9c029a73",
         x86_64:       "3b03e15e3e809ada49e5a4125eb36508585b6d5adcd715b23d1ca3bedeb2a4e9",
         x86_64_linux: "960cd0d71a225f3b946bb49dd5c19624c558077d9cf3da4eb570380b43135b7d",
         arm64_linux:  "7a9d6851c57df4af7ac2800817a81970cf17c388e02d3749610d2fe199c2d0f0"

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
