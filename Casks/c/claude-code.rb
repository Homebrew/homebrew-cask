cask "claude-code" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.1.128"
  sha256 arm:          "1a56ae4cd171ba7839fc2b03d558022ffaebb5693be532d8f3c344731063e979",
         x86_64:       "eb7f5441fcc169a01ec6a655d7663dffbcfe9cb03491dc0c7a157e9e67da3737",
         arm64_linux:  "e2a31879b7433f658d915e6716249f10b913b467873950e8e7e066ba7c4d96e9",
         x86_64_linux: "770c81373ad42970ef576676da78d6be60413f4ade23abadbf1343ca0809bb3e"

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
