cask "claude-code" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.1.139"
  sha256 arm:          "aa8a0a39f2abbd9e09518eb7268cda105b8029620a38f5a5cbc362b65331c3db",
         x86_64:       "12303d03814e76e8d09fb989286e88b7c5865facd00d71bc790112dae087acef",
         arm64_linux:  "3985aaf75b3bff1d8d031b726c804e4152e1530261683cdce14e954f0af2c912",
         x86_64_linux: "c1800a0ae51b5a4c7b33be6a32d62b6169d93f6174119b2eeb6896cf0cd5d7e6"

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
