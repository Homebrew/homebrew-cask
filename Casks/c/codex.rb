cask "codex" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.145.0"
  sha256 arm:          "072a30a65f05666735889ef0f60b56db186adbdde9d5c5cc1a64be0b598530fe",
         intel:        "4216d7a40aa49d74b65fab93d2a86d2e25a902482b827dbdb3f357777b09fadf",
         arm64_linux:  "d384f90bc842450b42bd675feef06a12a46a3b1ca97efcb22566b270e4a11227",
         x86_64_linux: "bfaf13c9ba34f2ad764e4a916c49cf7177aeba329cf0f719e2227566fc8d662a"

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
