cask "claude-code" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.1.32"
  sha256 arm:          "841ac3051c04480a5651bc9f4ae27ab9d3963477250e71892e4d6e05778dd9d3",
         x86_64:       "2b8a57be5640076e17d23e47e9288f2d1faee6564f4e311b5f7132bfde73fded",
         x86_64_linux: "96cd1ba796772481bd49bd67e3b8484565d1f3a99662565516c3bfe16d9afd4a",
         arm64_linux:  "6f8390c0fde5b802ff777ab54225233f6159d76913adc3b8aea7c8774fa8fe70"

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
