cask "codex" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.142.4"
  sha256 arm:          "a292c7d2a27fa376b0ae8cef0161b6b73fe4b9ed7f2baa73d876262fdb30c81d",
         intel:        "f1d47cbda3edba9346813d5c14e27cc2c3280d9cb7661538c8fd0de1db806f0a",
         arm64_linux:  "a546ee05915313fea340f8315b54f43d077f4390afbb5af2de944d48013d447f",
         x86_64_linux: "f0ac43751c6d3b29a973a860a8de528ad79cb20cc1296611930a3d5c91ddef95"

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

  generate_completions_from_executable "codex-#{arch}-#{os}", "completion", base_name: "codex"

  zap rmdir: "~/.codex"
end
