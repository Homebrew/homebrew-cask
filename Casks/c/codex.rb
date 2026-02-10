cask "codex" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.98.0"
  sha256 arm:          "3cc757728803aee0c4c994c568210d9900abc6cec60be023e7b2c0a6e3018255",
         intel:        "108c413581dbf5b1fbaf0f52780697b29120dc4b5d9ff2992b5afdacdf5e5304",
         arm64_linux:  "150340d9a3c2431b3f5073b21c6bd60aae10f6e55e8953c7fb6c8b7029889740",
         x86_64_linux: "c09ee6ec6f1eef58824bdea14efb10adee54e0e3c5ccbfa4e3ff3ad9b0dddc83"

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
