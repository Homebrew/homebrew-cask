cask "claude-code" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.1.14"
  sha256 arm:          "9f1b058a134ceacb3d972fd07fdb36a4bd9fb01ce8b498e9dc4cc97593689602",
         x86_64:       "0b44e49b28755dc3e42e7bdd20e9a91da79c78b1bd216141f06f96792d31b23c",
         x86_64_linux: "2b31c53e861175a9e4ee8b94653be9fa193718c32b184cb47ad16ea4adc7a1ae",
         arm64_linux:  "36b5586cbf1e1cfafe1b5eed626c10fd0217c3430ecef87dbf32f5b17906960b"

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
