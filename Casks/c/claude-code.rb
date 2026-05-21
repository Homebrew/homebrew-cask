cask "claude-code" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.1.141"
  sha256 arm:          "31ac95bb19a33b1d0cddd3f3ff594bf8bfd2be5051cd2af7867109641cab705e",
         x86_64:       "fa9000fdf4a522fcaf30ea283555aca2ba5d0e76cdb8842154b7735b558c7c25",
         arm64_linux:  "dc931e24f62afbadc8dc68115278b08493825a3ed1ea753d587077181a6cc63b",
         x86_64_linux: "832be26e8f15b2ae99e520a22b034fc4bfad1cb5b84de6b706487072c56bb42e"

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
