cask "claude-code@latest" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.1.107"
  sha256 arm:          "af95a2929cea1ac50feb32ac76bcaa9bf4791fdd25c3186ad7b514da0788deaf",
         x86_64:       "cdfae1d314063e17f7a6fbc153bd9f4f6727e565517b5b9453635acf87f028bb",
         x86_64_linux: "8abe3909c55b3afafa8939d28c2cc2fcf73ba9424a46b4f435bbadda7e0eb00d",
         arm64_linux:  "b3f1d3acde0a247c67a93638208911dd2f676743d16cb3f9bd3987ffb3498a00"

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
