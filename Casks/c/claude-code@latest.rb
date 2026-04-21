cask "claude-code@latest" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.1.116"
  sha256 arm:          "4ecfb5b5c30585d0a3d5b5ef802a39804ddc33a63012ee0d4aee4d4e3db46eb4",
         x86_64:       "4586d0c17772a826d0d57e4664b66ffba21a01d11a8611a5566b587bf24c340a",
         x86_64_linux: "0d1aea5ce056a5ce491da7e9bbe63f992585e5c24852f023a07c8f18cf292cc5",
         arm64_linux:  "dc3854c271a5323da9047f90c5b1a5bdf78ac03474eb45c9c26b84ecf9f2134c"

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
