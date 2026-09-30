cask "codex" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.159.2"
  sha256 arm:          "38aaf6dce63099fd10988948d03bbc6c0474253aef6961fcbe60f8d154b39101",
         intel:        "6b9b38bfad6ac8019aa6a243ee3ab11d3e22889eafd5458b0344cf20e797e680",
         arm64_linux:  "05a524a463cadf7e3e22c7f923539c0d0b74c3e78b1f5f1fab52e50e6fb3312f",
         x86_64_linux: "9e2d29a713b94478b240dec2f10e11324cd05fad76dc43e7c639bdf8a1337a6b"

  url "https://github.com/openai/codex/releases/download/rust-v#{version}/codex-package-#{arch}-#{os}.tar.gz"
  name "Codex"
  desc "OpenAI's coding agent that runs in your terminal"
  homepage "https://github.com/openai/codex"

  livecheck do
    url :url
    regex(/^rust[._-]v?(\d+(?:\.\d+)+)$/i)
    strategy :github_latest
  end

  binary "bin/codex"
  generate_completions_from_executable "bin/codex", "completion"

  zap rmdir: "~/.codex"
end
