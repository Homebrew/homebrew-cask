cask "claude-code" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.1.23"
  sha256 arm:          "80e39bbc7cbbc7dea101dcf35676a270d5bff25a8a8e29ab038ceb131d8a7b3d",
         x86_64:       "f22d8b1db63e631bd2a97ba14a0b924d9a8102d06efdc216228a42f93d665bbc",
         x86_64_linux: "eff6d12c8220260b8d6926b35de20daae0db43de236920762c7da4c9d20dc843",
         arm64_linux:  "4b45afbb3ea3708ef6ed5038a7cc32054487f1fb577f56e9418b83d163f88f32"

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
