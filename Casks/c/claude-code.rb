cask "claude-code" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.1.126"
  sha256 arm:          "87a1d05018ceadfc1fe616bfc10262b0503f51986f4af2dc42d1ed856ed3f7bb",
         x86_64:       "49a90c474383a9eda11310bd71f7ea6bb91361ec99443b733cb5003f6e703ccb",
         arm64_linux:  "88a6dca613a40559f3bac8a946a2ec6e60a870b91938d3df93dcac1dec4848cb",
         x86_64_linux: "fce96968d275161ff65a4c19fc6434efc6973d9f6d35dc3992a2ba0553cac18e"

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
