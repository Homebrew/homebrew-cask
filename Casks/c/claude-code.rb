cask "claude-code" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.1.20"
  sha256 arm:          "c5703596ed854ae8e5775cf38de5d71d8a56ecfe3f36904812870e9e34178c8c",
         x86_64:       "0d38292770c88bd9b13b0684afb0d2dc0028a1437d0c09be3449d2b3d369b045",
         x86_64_linux: "f9d3698f5378a486db2d4eea5c80f95c2ceb410fbcea9ffc5703b5aac9574fcc",
         arm64_linux:  "eb8801c7a4a8501b21c235f36674f17328e65e796cf8a6196b3bf9a23ae16f99"

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
    "~/.claude",
    "~/.claude.json*",
    "~/.config/claude",
    "~/.local/bin/claude",
    "~/.local/share/claude",
    "~/.local/state/claude",
    "~/Library/Caches/claude-cli-nodejs",
  ]
end
