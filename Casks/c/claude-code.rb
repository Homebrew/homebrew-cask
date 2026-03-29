cask "claude-code" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.1.87"
  sha256 arm:          "80b51562db1a51bfb654aec1fea6a04106daa0bc1525d88c9c74741ff5d9469a",
         x86_64:       "c1a4cde29e74e4c3952ead69f90a37a2388aa097d7c567a81ca3669a309e9226",
         x86_64_linux: "b1a5b89469862adee0e4dc28cab5a8314bc4d0117e19ab26a7b7ff7ce9b59bd5",
         arm64_linux:  "193c5e9c091eadde302fa23af46c8d646b7263f74fa06ed32746e504bd09df18"

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
