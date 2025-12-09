cask "claude-code" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.0.62"
  sha256 arm:          "0c577a0dad0616ca584ab5f4b6b2004c8921ddb3258ab69ea77ffc1a3ebf56aa",
         x86_64:       "feefa4aee1b8dd8541cf89915c61eb9873c1e0f7ad71117b6e812eca84a026a3",
         x86_64_linux: "a95117e1a3d8375c97a74e48ef067f44a926e30e6296b975a0e7fac6b9e999ac",
         arm64_linux:  "7f297b5208e9c8717be4e28904782f7f8fa113475cfb00266beb3cd0f80ec2a1"

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
