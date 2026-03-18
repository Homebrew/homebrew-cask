cask "claude-code" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.1.78"
  sha256 arm:          "0a4939f36bc0194021c56fa5c8470ad84e2282f2f404f1598a940c2044117168",
         x86_64:       "14d9193a85a6b191b090fd2a1ce261905cccf0bf6728239d7c2147719641963c",
         x86_64_linux: "b120a4139a4477a2719aeb0b2c790a5c2fe2d904e47f4e2adf3cab33b342d03a",
         arm64_linux:  "75cf87465197883df61dcbb187d4ad3fc031bf91927658159929dcd2959542dc"

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
