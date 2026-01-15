cask "codex" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.84.0"
  sha256 arm:          "c873b861c880d00ec5ec536d32331e0364c9c7a1bb79340705799884ba975ca7",
         intel:        "16f3b5820b6adbfa7aee1235225bad9caec123b66c25dff44ace1145268dd850",
         arm64_linux:  "7f1f8f9306996ff2f10037b2884fcaf72bd51d3c82d873f4c47fd802295618d8",
         x86_64_linux: "30fc959289840f70aa9eeb31e9bc6e29d700e2d8d5d422d7724b189519ec0ff8"

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
