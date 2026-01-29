cask "claude-code" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.1.25"
  sha256 arm:          "1023c0334b0bf99ce7a466adbdb24ed0cae0ce4e1138837238e132b3886dd789",
         x86_64:       "13fc5f92b6fec84b674ac7cf506524323f012cf999740733f7377f6fb46bcfd7",
         x86_64_linux: "696135f0eccaf7a4070168845146833fa4fc93a6191fe026a7517af4d2e14fec",
         arm64_linux:  "38016991376efb8b1a83488800a9589694a6e77a7a920c5e654778c68753c776"

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
