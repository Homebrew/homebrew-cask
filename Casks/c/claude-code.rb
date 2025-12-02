cask "claude-code" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.0.56"
  sha256 arm:          "db4724ef350e3f68ffd793ed7f030fc76d124124d7fbb44aad890baa48550152",
         x86_64:       "f026e54eb84c5b3238b82663ecc24334deef0ecd6413f9720f6112b6c4db9c0f",
         x86_64_linux: "dfd3588df13d97602161b53e5c712be3cbe0eaf1e63ae31b51face03543a5810",
         arm64_linux:  "8ebc95b0da29b3ea830b2dd3d7bd35dd2ab3518ac2e18b4eb41b0fc2cbd0d2c1"

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
