cask "claude-code" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.1.71"
  sha256 arm:          "f3d8129ec7ddaf158c10e193df546421499d69b7f44ec2f0b67c3fe54f601cb9",
         x86_64:       "a8ff210022860b1567d35fba5822d9be4a74c422962e2e32c39f4116796d57c8",
         x86_64_linux: "61002e5f5c4190e9a775bd9cf90e57fff3f0379fb2c8edc653ac0942a347babd",
         arm64_linux:  "ae26e4a5654238f0a684d5fd9a6bf592321b06eb88ea834343b275f310e39bea"

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
