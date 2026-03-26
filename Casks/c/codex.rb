cask "codex" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.117.0"
  sha256 arm:          "1e82f62b4d8f8ef9c0defcb0e68dc35da1687d2c8fb5e68ca2f441f3959987fd",
         intel:        "948d30f0d9b762de38f54a8de2e7c9420fab41190c5ce28b0c21bed5de7f1a32",
         arm64_linux:  "adf2b7a16321791a7b7ea79d69f4b8d5cf4ba13232efab938dce125c751a0725",
         x86_64_linux: "9f789c241385431f1fe9ccd27113211f1cfd84655f155a5c062010b62c6f5a2f"

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
