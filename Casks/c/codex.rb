cask "codex" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.59.0"
  sha256 arm:          "cf1f81a2b2a33de180d9b716de1528207a0e7e4f66a9d6b7d0aa005985fe37c2",
         intel:        "3e3fb46b273d076d71847361928f883b95cc3299a7eb31991c06fea6f61f0790",
         arm64_linux:  "f51cceb5053b58432063e853a89418c3b30e3e6693772c3df9702d82c8e0f59f",
         x86_64_linux: "6c516237fac0d7053b9e419a041c5894790ba66f9024ad1a93c89fe26848bc10"

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
