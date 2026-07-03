cask "claude-code" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.1.191"
  sha256 arm:          "99fdfb552a5260e649aedd06c024d0a4105b09cefec0bf67d558e017ee66c400",
         x86_64:       "6e83aad5fc4fd459fd74539cda06d2279105eac2befc603d2fba6494974cb2a4",
         arm64_linux:  "1a31a7cbcfd784f8c073bfc8a0a1583fb6e93e60ef70b76d7fcf663ffed8949b",
         x86_64_linux: "1038dba88bdf1b80941dc3e383e93b088325b00497329ac50da460c8786d5bee"

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
