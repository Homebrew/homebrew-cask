cask "codex" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.97.0"
  sha256 arm:          "3f421d884360a504817654eabfa9b10e8467d1b2e75bbd36599298adef355006",
         intel:        "1c800968b14b9f620b26a20fb063bcfda3b227f93f8b9a36ca2dc29bbc05290d",
         arm64_linux:  "acfbd0b3bacd18558faba9c41f074038a70c680006098fc58c0326eace3f3cc8",
         x86_64_linux: "0d6184f8d9f8da235217bedeb699d47ad914bcd8169ac0b701c248e2b14bbb3f"

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
