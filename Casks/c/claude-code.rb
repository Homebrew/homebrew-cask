cask "claude-code" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.1.66"
  sha256 arm:          "7ada6848516636e229eca0b5061585741c02b46d6b285f121c11a58c4c4875b8",
         x86_64:       "bf072c24f815f18246b7ce492c4b0a8a5ae2c0189c20aa950d602d6fd7a51126",
         x86_64_linux: "23c277040f5e5125232f8689ed2698b7a09a0cd9b2863adb49220d25ea9deea4",
         arm64_linux:  "2fcbd25c344c56efe6a3db2c19f22575a88f24e3a129ad0f1fe59e9004094528"

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
