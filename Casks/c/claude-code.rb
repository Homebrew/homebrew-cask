cask "claude-code" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.1.77"
  sha256 arm:          "6426772419c758e71146725582d67f1dda42687c693c83def9ad3422bb81ebf1",
         x86_64:       "9be4a24a213cd3f475713e8fb7548c631aabdc355ca191e926ccb63f12976409",
         x86_64_linux: "34559c9cc9eeadc942d6731367aed3915b6b7351d98c61ebfebbd8fa59508ecd",
         arm64_linux:  "f4303a1a3455b0ebbdd356c1337ae3076affc122fb79a78a2d1886e5c62f289c"

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
