cask "claude-code" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.1.83"
  sha256 arm:          "43246a9ff21de27c517f48af52c9d510c9e6e70bd90b115d80b9c690c515ae0d",
         x86_64:       "bd16eefc5f7ba3d1b791e311f4d5b24ac3174588110a38db1c88c1b51dc88214",
         x86_64_linux: "ff79cd5d152017326f661309bbffbefc954f02a195fb232ada152d812e476e66",
         arm64_linux:  "660bddb82c06a69bef8e468ffb8dd2354212bb76de122fe5d67393564b932de9"

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
