cask "claude-code" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.1.193"
  sha256 arm:          "f7513a30385ad9019c237226fd6ec46508b3062ebefca8aedbe397d111a818ff",
         x86_64:       "cba5c3bdca8ab5f8e7590406702d418f6114d9b39f48f16876680e881abf1ee8",
         arm64_linux:  "39454ce62e795eeb4871a81f6453cda96e926e2db9a4dd41d0ec1b60b0153448",
         x86_64_linux: "c9f04d929f18bd9a101f3897f27de4e1e0f15ebe8400d4aaf02983d73dd66b1d"

  url "https://downloads.claude.ai/claude-code-releases/#{version}/#{os}-#{arch}/claude",
      verified: "downloads.claude.ai/claude-code-releases/"
  name "Claude Code"
  desc "Terminal-based AI coding assistant"
  homepage "https://claude.com/product/claude-code"

  livecheck do
    url "https://downloads.claude.ai/claude-code-releases/stable"
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
