cask "claude-code" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.0.52"
  sha256 arm:          "2745203756dc8d42c5590d44e859c0dff9cf4ff0efc49f51d0c34ad4801f2dc7",
         x86_64:       "ac1d86690bd3c76309ecc9efc4110156068261a8260ac5dbf5e82cf66d44f256",
         x86_64_linux: "2d1ae9a712982daefddc6f00f26dd7f83d1c826c05d65df619968d2727861991",
         arm64_linux:  "34b16eabc3f7ac6f020dc7cb24cfe4d477365949fea0fa27da5461e479119abb"

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
