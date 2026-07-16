cask "codex" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.144.5"
  sha256 arm:          "a5b77d2fb393f201777809425ab28d9beb65ee0c0b2bf792f09eaf8ef1151592",
         intel:        "ff5c894a9ffa6d97c225c8d3c869c7ef7573dcbd0cf9b762ecfb9fa96dbb7d88",
         arm64_linux:  "5433789cd66e0db3b78cccd218d894471ed9e92fe93465120d1356508952084d",
         x86_64_linux: "b6bea13bedf493232f6717714c45e783788c695cedcf37c344f73afc97b1ec9f"

  url "https://github.com/openai/codex/releases/download/rust-v#{version}/codex-#{arch}-#{os}.tar.gz"
  name "Codex"
  desc "OpenAI's coding agent that runs in your terminal"
  homepage "https://github.com/openai/codex"

  livecheck do
    url :url
    regex(/^rust[._-]v?(\d+(?:\.\d+)+)$/i)
    strategy :github_latest
  end

  depends_on formula: "ripgrep"

  binary "codex-#{arch}-#{os}", target: "codex"

  generate_completions_from_executable "codex-#{arch}-#{os}", "completion", base_name: "codex"

  zap rmdir: "~/.codex"
end
