cask "claude-code" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.0.59"
  sha256 arm:          "470c8ea6ff52cce9e410323a927c2af911fd5d8d40b84a1b09ed53c7a7110475",
         x86_64:       "d238d981cca4adcc05175a476fe98c885dbee4ae34f74e9341b0a62926df7640",
         x86_64_linux: "227e45794b2cdbab2d0497f211afacce0e679bdefa2105a1ff7526b2c0a3c15a",
         arm64_linux:  "32441174c360fc63b2368ed51ee2ebd8ef3e1f8d701e50393444a8407c4238b1"

  url "https://storage.googleapis.com/claude-code-dist-86c565f3-f756-42ad-8dfa-d59b1c096819/claude-code-releases/#{version}/#{os}-#{arch}/claude",
      verified: "storage.googleapis.com/claude-code-dist-86c565f3-f756-42ad-8dfa-d59b1c096819/claude-code-releases/"
  name "Claude Code"
  desc "Terminal-based AI coding assistant"
  homepage "https://www.anthropic.com/claude-code"

  livecheck do
    url "https://storage.googleapis.com/claude-code-dist-86c565f3-f756-42ad-8dfa-d59b1c096819/claude-code-releases/stable"
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
