cask "codex" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-gnu"

  version "0.52.0"
  sha256 arm:          "d6de42b30343428f9b6220a8c9aa21c49bcd8807c32ffb7239fbd7499e8f91e8",
         intel:        "d53acbbf6d63170ca8d29356a7a8e4f8413d9e5e9e440e92b96c2992a3e46a6b",
         arm64_linux:  "b0f50a95b9760fda31cb49bf26ae2d35e0e00dcc68115f9db327a58e30098683",
         x86_64_linux: "2fe353ab2e86684e85ea03c9d769bcf9dee767ce6bf84a89244d14f167649d17"

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

  zap trash: "~/.codex"
end
