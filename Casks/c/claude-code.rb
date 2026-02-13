cask "claude-code" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.1.42"
  sha256 arm:          "6908152bf1a4babb13de86640f3795349005069b541d4b8a3996802b863a02fd",
         x86_64:       "1a4e1d2f99b6d9b294607bde402b6746134ffa913b22767ee45fbf820dfcc1b4",
         x86_64_linux: "51785bd26d2896396819832bc23a18a6c0ca39b7b761193fa7b6e990a17f27d8",
         arm64_linux:  "5a75d0713287b636636a06ce9103ff54f5788170f2e9312fc7559121f649d36f"

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
