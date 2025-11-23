cask "claude-code" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.0.50"
  sha256 arm:          "a8d06f2ddb2f09817eca397c11efdd960e7e25638d17c59760f1cfd371d04430",
         x86_64:       "3ec59e209e45f86f0f63e08736142c220e86c5e79dffa21ca8392e187cbf6bce",
         x86_64_linux: "2c3399e8a22e607c61ae007b3ffe11633648cda195e790568ec75f19cf550833",
         arm64_linux:  "1488d9c228c0c97f651c6fcb37053c5dffa86f31f77b232d47e61bff7da5622e"

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
