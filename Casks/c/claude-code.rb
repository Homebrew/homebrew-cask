cask "claude-code" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.0.67"
  sha256 arm:          "4b5709f0b799650445da3df46025f600f6ddcc65f2c9857d2c83eb986c343ff0",
         x86_64:       "58b5110ebd0a4496f07350829c05b17c7bd0d99c54482db68e6c8ee5b79a840e",
         x86_64_linux: "b2a12279d5df3814f59000682a571edb771b73e89b4bd894101f01e3726726f3",
         arm64_linux:  "7ae2baadcb6db64b26d4edb277aafb02a42be82f0da4a193289271852c9a96c8"

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
