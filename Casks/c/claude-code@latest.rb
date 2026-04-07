cask "claude-code@latest" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.1.94"
  sha256 arm:          "cf1c5db5e87610eca1e8f06dc2b2a2a9c0c04c179c55c7e1fcdfc9a2c014b31c",
         x86_64:       "e3d29d0febf982112e977b7d732adf3167f229521c8697e5253c90a6d2d4a332",
         x86_64_linux: "7cbc939cb52e09d49fd82092061543d21100b04c321e19fecf06f087dc908667",
         arm64_linux:  "b3524791b50b314b17dac9978cb9568fa2e11a46562ae6f798d0dac453a0604a"

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
