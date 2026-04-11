cask "codex" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.119.0"
  sha256 arm:          "9ef2c0100a368cf699b9f3fe9e28c6e0b083fe5788ee468af9d73822adfd0a6b",
         intel:        "783d098ed68609de583a597fdd7ce6464a2ee795f1ff2574bdc54eba1671c37a",
         arm64_linux:  "42a9ebd4b34b4a8986176fdabfa13202119c35454d3998ecc1aba123cc847fbb",
         x86_64_linux: "66cf5db5637645000bc50981fc01b7a42815dbdef33e703eca57b0f15a4966c0"

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
