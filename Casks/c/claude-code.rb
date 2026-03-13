cask "claude-code" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.1.75"
  sha256 arm:          "8c541a5e924eda2070eaf1702a48047af671c4dff6a11a5e762076614a082675",
         x86_64:       "82c90b91a0a18f60191f817b9b42304d8b17dbed75795b715c41f4fdfe4c782d",
         x86_64_linux: "328b0a429c05a04f911157d886be5123cf1824a19ba8ca1f9d594c004eac32c9",
         arm64_linux:  "ec8f4f7f7bb50611dae70c109a76ee1da6a3ab45511c65f117df215848ecc905"

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
