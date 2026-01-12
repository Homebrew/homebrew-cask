cask "claude-code" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.1.5"
  sha256 arm:          "fec6ccf4f1bc3c56ebd885c0b032e00ac3e04eb029edfbca166ea4379e1697af",
         x86_64:       "2f859771a63c34a72e7b80d263c4fc45acb00c230043b482bfd9b73fce08f652",
         x86_64_linux: "bff6a9403b41ff4792dcd3d75cc2d49afa9f4efdd0e689c66a952ab301ed3802",
         arm64_linux:  "371c19400a0c7f44bace9f8b24f10cf8fbef8842185fb5f69d5290ba8b04f1dd"

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
    "~/.claude",
    "~/.claude.json*",
    "~/.config/claude",
    "~/.local/bin/claude",
    "~/.local/share/claude",
    "~/.local/state/claude",
    "~/Library/Caches/claude-cli-nodejs",
  ]
end
