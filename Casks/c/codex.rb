cask "codex" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.100.0"
  sha256 arm:          "dbade6adea845cee28cd06998514eec0736d26a38d61a9fb1a5faddefbdf1ead",
         intel:        "8a2e3b8246b373c07b4ef44acd8e3c72aaa196ab7d9a66146936157704ec106b",
         arm64_linux:  "4634f8ee695a7f0caeaf4c2cb62e829a53e8f11104eca4405e511ed379b53f03",
         x86_64_linux: "84a9ee70b779b658cc7dd3a45daed3f56eba30b3860156b716c81c3c33496946"

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
