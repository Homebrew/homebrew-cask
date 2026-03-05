cask "claude-code" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.1.69"
  sha256 arm:          "a86e14f44b167c1e8dbf764f76755b92ecf52c097d732a3461fe65b5fb60be05",
         x86_64:       "e5987b4dd502a6542bf86c3c0bcd1d533b774616fc7d49566ce0b2040e6c1374",
         x86_64_linux: "b3bdbd5a3cbf8caafe353022170df77fefa80b00003074d4d27e7da8c59e629a",
         arm64_linux:  "ecc7bbf10513ff122327866eb97212945b73afd7f81e30700375cdf10f50b2a3"

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
