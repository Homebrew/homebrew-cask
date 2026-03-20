cask "claude-code" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.1.81"
  sha256 arm:          "d014162177fc18bfeb7f93d942130dd964f7424e4101f6ad569de66e6eddca03",
         x86_64:       "3c63d8173d4a86ab3985aead73c4699e42956d10c2f946179274be76ec657099",
         x86_64_linux: "047e3f5591d6238b08dd9518729ac335b0e8df1c80fe985e5d7fbda2c18fc281",
         arm64_linux:  "ccfc3845c8d1a2ded9656a3a517694a844a1b7005b87c784a66f7a60cc58012c"

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
