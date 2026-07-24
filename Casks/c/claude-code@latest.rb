cask "claude-code@latest" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.1.219"
  sha256 arm:          "a8e806faaefac53c7a0f26523d8a45c60dbef3407b14ef990c75765d08febc82",
         x86_64:       "03be9f988ed88391b4a5f08e4c5dc317ce2fffa4a9dc66c01106326e7698ee76",
         x86_64_linux: "22cfd6f5b3061c0391ba84e9cf8c9deaa37783aac18b004d42ec061e98f00691",
         arm64_linux:  "1f834b322ba9d1291cc7ffeff16a6795a59145bda279dbd59cd7ecebc7b7f15a"

  url "https://downloads.claude.ai/claude-code-releases/#{version}/#{os}-#{arch}/claude",
      verified: "downloads.claude.ai/claude-code-releases/"
  name "Claude Code"
  desc "Terminal-based AI coding assistant"
  homepage "https://claude.com/product/claude-code"

  livecheck do
    url "https://downloads.claude.ai/claude-code-releases/latest"
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
