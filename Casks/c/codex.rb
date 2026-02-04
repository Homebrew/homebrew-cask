cask "codex" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.96.0"
  sha256 arm:          "63fd8ac2a5c1426c0b86468083438f1921ab555b56ef880180a5ae4bfdeec76d",
         intel:        "bd7b9f02146000fa84c08fd6df0039ef4431bb7636929746bce7af598ddfbe01",
         arm64_linux:  "124ff210d72ef6658fcf14474da6910e340a07579beb8e2b501674656d53ba5f",
         x86_64_linux: "bdb8d064a469d484a9664dbce5fd9cfa3c181e727f1859f1cff9104f184ff838"

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
