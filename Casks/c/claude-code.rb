cask "claude-code" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.1.76"
  sha256 arm:          "ffe922f4f4ac542f4edbeeabbce2a7492308d034c66a2427caec5c31c39b71c8",
         x86_64:       "2a13d9a3ca0fe330fd786341897af2e5250066bbbb1fdcb6cfdffa50cf0f90fe",
         x86_64_linux: "801a085676c3d54392c42e8e43c44947df7c52132356575f7d9267c4f22d6992",
         arm64_linux:  "40f753c07f070df34ca83e400f746a8279a3fd343967a453d9fbfab2f3ca7acd"

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
