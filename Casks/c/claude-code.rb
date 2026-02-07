cask "claude-code" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.1.36"
  sha256 arm:          "13da8af753ec246d0992ada508de059b3ad50712708155d4a3450c18ad6115e4",
         x86_64:       "79148e2bacaf3917f75e8cbf90cd3f74187a1f5f10a6216a2dc8bc84fc15ad6c",
         x86_64_linux: "3466e6f86be62a60d761de096290dd9045cb295c4e4011a0737449c2c8400aa5",
         arm64_linux:  "c01e68cb303f0edef3619da68e58f15a3b9638e4db936eaee644ec326e603aa3"

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
