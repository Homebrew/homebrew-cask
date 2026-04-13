cask "claude-code@latest" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.1.105"
  sha256 arm:          "474623fdb2d372bc78b2c3dd13aa43b111564f750cbaa79cd584739e72e43153",
         x86_64:       "0a2cce5c09c31fb08259756cee14a1e2d2c2dbe4b8c314294a4af40a2196221f",
         x86_64_linux: "747140e2776ed3af1324f2501eec217b66f20f66af5042e4cf04f5e10d2500ca",
         arm64_linux:  "f51f97ec3d7b75af16837a92b0a489b8b0a7209f91dc6522958fb25b093be6ea"

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
end
