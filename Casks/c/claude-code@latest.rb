cask "claude-code@latest" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.1.90"
  sha256 arm:          "73c1a7570501ca743cd2d7467cb4699103534a2138052a4e6cab53c0e09d79c8",
         x86_64:       "9934675063ea4360665b7a43f649c92e6ba5cf93257324af7af1a6b490746395",
         x86_64_linux: "6074e3959989b2958a9abec60adf7b441a0f6f1c7e66401abff0fe54dad04fd6",
         arm64_linux:  "15d5089ee7d9981faacf5463eabd427a012814d9fc02113883bb23a4f387ad4a"

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

  caveats <<~EOS
    Note: the in-app upgrade command shown in update notifications is hardcoded to
    "brew upgrade claude-code" rather than "brew upgrade claude-code@latest".
  EOS
end
