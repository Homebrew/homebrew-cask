cask "codex" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.116.0"
  sha256 arm:          "148735f5f2209b2f6a31bd7ca3689c628c2e6c5268ffba0be93f7720fcf892f5",
         intel:        "a080159cb2ff5741af5685cd2a2c6b7f5a9fdcb8b32754a52aadadd0f2771b4a",
         arm64_linux:  "3445faf591f2e0a2d6aafa72608fcf3edef6733d3d8a6b0efd555948a58617ba",
         x86_64_linux: "afa089c032c31317921abc02fb881453aed4aa800358412171efcd069ecea1e3"

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
