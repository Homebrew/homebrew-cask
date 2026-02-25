cask "codex" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.105.0"
  sha256 arm:          "0643e474c63470cd0e190f4398b1e3268a9d0944663341124b649aba121f7c6b",
         intel:        "9386cfc35465e7dd25c8b169015607a7f12f76c5649a0aad653899c8f21d835f",
         arm64_linux:  "404af76945156f316bf415ff404872c3cf38c023c84a1a5a0b9202bf3230e489",
         x86_64_linux: "78d1c3815d7e98d5bd4305ed55e74e9b646c3878ae83479219b0aed28c34f473"

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
