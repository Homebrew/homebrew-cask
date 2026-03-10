cask "codex" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.113.0"
  sha256 arm:          "9cffa8f8bb08e013ecc1e1b77f3a390a8830005704bd1a6f8e080253a8ec7460",
         intel:        "ec6e091e1fe3c41ae4115abe1181a5e98dc7c544edac29d298a03ccc392ac999",
         arm64_linux:  "833f440318aa96ca2110194aaf3b25c54037a28f2594435b60d05c7464f153a0",
         x86_64_linux: "18dfe174e04cb40e5667bab2a4100e071bc3ffcbc2f417e3c5988d658217e9f7"

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
