cask "claude-code@latest" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.1.153"
  sha256 arm:          "449d9c89d7a63b1d427d912a7bd6e6f23f9a7b363866697c9fa9a0012546b254",
         x86_64:       "4b90521c64b728caabe221737ce8a83d362ef0852eee7d789f014f7ff73ce97b",
         x86_64_linux: "214f603f31942162dac9a65f18d43b3ac646ae215240fad481c4aad6c60f2e38",
         arm64_linux:  "6277fbbea72228a069e4719fc3e5fa36f16749247a2321c520dae93e83e92d9c"

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
