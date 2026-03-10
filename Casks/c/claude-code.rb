cask "claude-code" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.1.72"
  sha256 arm:          "c584f51362d562695bc71750d1c2196f9a0e0e36fd043e2bc683ccfc9a3ab3d7",
         x86_64:       "24b9fa183e4226640f0a2158e77702b0dd860d9205b1bec7e695609a309c8986",
         x86_64_linux: "b55338e7fbb8bf7d268b91bab3b28753621dab9637b1cca943669f4490ed878d",
         arm64_linux:  "9f0c10cb9d222eaf4ec4870403a1561b1329dc669303613369a877fd05a11708"

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
