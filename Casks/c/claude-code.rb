cask "claude-code" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.1.201"
  sha256 arm:          "a0852d76afc47b30f5cb0b7625ec9a7714cb189f2eeef6c28c77e2be954fb7fd",
         x86_64:       "1889287a92d25356ae8bd8d8e67b11456015516ee8ba4277a0c7074786c49bb6",
         arm64_linux:  "86b2eab34d382c7b428fc2e9f4c97f04e46805e950582472a13eb7d48de60516",
         x86_64_linux: "a34809a6839fdefff21b9347d7fb5b6b58e6a9cc208a5e62853f29c83eb107a3"

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
