cask "codex" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.155.1"
  sha256 arm:          "e6e08717da9e35b72332eff753527fe79a9ae876081033c5c6820a8e5f58b943",
         intel:        "be752aebb2ac022c5bfed3fa14f46943d11ddb36a950b553b058794aba22496a",
         arm64_linux:  "71857dbc9bea3613410e8a69cfb46b07c0402d6d20fec18843dbaffd757634bd",
         x86_64_linux: "a65b895c6ac1a73629bbe4b864640c86133e94a43b4d67b3103044e1a306d5a2"

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
