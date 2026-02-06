cask "claude-code" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.1.33"
  sha256 arm:          "4167a0757899a94ba60ab7d815f6874a2dbb7099edb818eaaf5b44ed1f412edd",
         x86_64:       "e819012ad70854c787b53e2e2917f2090121f2332a7950ee8287d99ebea2ae18",
         x86_64_linux: "c8655931f35fe963cf002aa7ba2c214970850748bf1da5240f97940c2fd8835c",
         arm64_linux:  "7ef627e6702e0855d00f04ef9818f23e0b64564b3e94173f2ec244fcf659059b"

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
