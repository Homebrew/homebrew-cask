cask "codex" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.154.0"
  sha256 arm:          "427ca74c027049e0cd1a330d611e7f8d1fe0f1eb6a6d85ac16f61bcf2cb4a485",
         intel:        "8052c6accbe0361bfbd424a10aa5f2226636ed8afb6dcbd5e6437993e57b16d8",
         arm64_linux:  "97d93e11df72d3c26772db019e6ea8bb72c246500d46b98c760839f3240355e6",
         x86_64_linux: "fc6e3e3b85f2cf7d664520ee5c66a7fe4aa12bae7d46834f47e2f165fd0d6f78"

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
