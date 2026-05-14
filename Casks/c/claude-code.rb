cask "claude-code" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.1.132"
  sha256 arm:          "2ce6b9007f38f5caf0d116ae35d59f1a6d40e902ae7f9f19aca6ec483697b764",
         x86_64:       "1953f50853eda4c374dfd558f1cf62a13a99c814aae73b42a07d3d9a49fe727b",
         arm64_linux:  "27266669eda5ae6115837e06230973f565f99b0f25c09ad86aeed404c3f7f947",
         x86_64_linux: "623086f65cfd9c3aff0c8a5125087f8aea3100aa92bf3f0533b2bea5e5d69e8d"

  url "https://storage.googleapis.com/claude-code-dist-86c565f3-f756-42ad-8dfa-d59b1c096819/claude-code-releases/#{version}/#{os}-#{arch}/claude",
      verified: "storage.googleapis.com/claude-code-dist-86c565f3-f756-42ad-8dfa-d59b1c096819/claude-code-releases/"
  name "Claude Code"
  desc "Terminal-based AI coding assistant"
  homepage "https://www.anthropic.com/claude-code"

  livecheck do
    url "https://storage.googleapis.com/claude-code-dist-86c565f3-f756-42ad-8dfa-d59b1c096819/claude-code-releases/stable"
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
