cask "codex" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.155.0"
  sha256 arm:          "b1411ec00ac410467e05cf8fb5b063cf83632613530201cd4724ef8dd0e9c33f",
         intel:        "88df3120417823949cdcdc131dc0c3bbebab197a21fdb5595f53fed227e024ec",
         arm64_linux:  "28110b360a635fca2c4501036a8efbe0da5b7fe66153ae1f2f944d3fb4c7b5d2",
         x86_64_linux: "135bfe1af2d8d5954c12f03bee2cf8b40dffb06f76bb0ec3bd6105de5357e009"

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
