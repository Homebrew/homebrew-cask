cask "claude-code@latest" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.1.120"
  sha256 arm:          "fad8faf49c7b1b454c38d785b75e17edbdadc7ffaf450b31349aafc6560b8ef6",
         x86_64:       "ad68f225e96db8b7d12d0c31f0343bc3227ea2886ecefae2f483cb32310b0004",
         x86_64_linux: "12c0d6eb6d39dc2597fd131d8ea4f12ed8bf25b47dadd9173878e6d025959c9f",
         arm64_linux:  "a6d0d25946c32a24b4e04471af70845a45428ca069fb3b489345f2a683262279"

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
