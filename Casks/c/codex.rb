cask "codex" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.71.0"
  sha256 arm:          "18b35660d7395ad524d7619539e5ddab64b5fac89c32951eed30cd67d9af2a31",
         intel:        "07e7b5e329fef62eb85b04b8c0c0816ac63f3ab40644e09914613c13ea357b46",
         arm64_linux:  "fda7edc867ae90912b90b27c1d2557cdc9692c3f29b2ec7b40d7a94bcda222b7",
         x86_64_linux: "8842f1ffd676d4567004d1e8886f01863ae32a1aa889167966b8de7ddd876a22"

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

  zap trash: "~/.codex"
end
