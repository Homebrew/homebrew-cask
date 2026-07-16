cask "claude-code" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.1.204"
  sha256 arm:          "1677b67595b6251156d62600dc85d4070ec385b72dd0b07e73742a56030952c3",
         x86_64:       "9ccea5f19ec0462f3b983ff3400a97adaf16a83c3dc36a69b916805f2bc8c829",
         arm64_linux:  "c37256a8c3998b8675e8385f1ae4677d69bdff1e717c389296eec70e02e317ef",
         x86_64_linux: "c8ee1ea69154533c691a68f46abb645196fe7339d26e6fc204cc7f08220139d3"

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
