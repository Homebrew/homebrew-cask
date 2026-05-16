cask "claude-code" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.1.133"
  sha256 arm:          "d38f34444911c86c73f32beb82821008b26be889fa0d0caf7085580cf5737e14",
         x86_64:       "b16758680c3bb1e0f8a867e31f9df84e8df2473b0693e811f0b29b465d2e64c3",
         arm64_linux:  "dcc7275f9198317e073c329abe174827604a801e9bfb577a00d86efcf4f8167c",
         x86_64_linux: "d0ddf0aee6e4426a705719e5d4716e3ce3cb38f9a5fe06eb6d5ffcef6c98832a"

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
        "~/.claude.json*",
        "~/.config/claude",
        "~/.local/bin/claude",
        "~/.local/share/claude",
        "~/.local/state/claude",
        "~/Library/Caches/claude-cli-nodejs",
      ],
      rmdir: "~/.claude"
end
