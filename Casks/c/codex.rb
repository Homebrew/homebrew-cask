cask "codex" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.107.0"
  sha256 arm:          "987e730c9c82257535f2b45ea470093232756a3770f5fb4370e65285a37afc1b",
         intel:        "508837586c7697d23d3af2862f5cc53373c8c3ff2ce092ef551f56d2c4991684",
         arm64_linux:  "b994c71d1c48aa4e340aa3aa295631ba54b6b94f0e2d5ece3ca744e86fe52d9d",
         x86_64_linux: "9c1a16086e971578f0c16d58d07fe8295791c0a597eeb7fd6388f8a3f1579cee"

  url "https://github.com/openai/codex/releases/download/rust-v#{version}/codex-#{arch}-#{os}.tar.gz"
  name "Codex"
  desc "OpenAI's coding agent that runs in your terminal"
  homepage "https://github.com/openai/codex"

  livecheck do
    url :url
    regex(/^rust-v?(\d+(?:\.\d+)+)$/i)
    strategy :github_latest
  end

  depends_on formula: "ripgrep"

  binary "codex-#{arch}-#{os}", target: "codex"

  zap rmdir: "~/.codex"
end
