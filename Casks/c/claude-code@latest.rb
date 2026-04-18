cask "claude-code@latest" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.1.114"
  sha256 arm:          "bf1b4da368da7970f0d1d4a1675acea99b6f2ad94f24e9f8ccfcc7940ac67894",
         x86_64:       "1a30360b6240056a58ba9187c8f9d2e88e949e0f970d5cf81f8d69bc65568f6a",
         x86_64_linux: "12bd4b0916deb06be17ffc7b2f0485e140bf00b2db3dcb78469d66723d73c27f",
         arm64_linux:  "9556b74e2c912e7dcaef90c91fd0dd5095364f8a9d71398de3c5c669612b828a"

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
