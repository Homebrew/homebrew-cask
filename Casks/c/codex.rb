cask "codex" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.102.0"
  sha256 arm:          "2c56f6f8d3e479aa0ae791c9ceaef2e78ac1e3842ba244015fa27b22b7142d6f",
         intel:        "60584c50b0ea38ba1b4a6966b0049afb44752aaa2acca746da91ca8c3f4a5756",
         arm64_linux:  "26c2fa01a8990215a9284fef42ab387c489e82e193ae4e6327fe61ca80115617",
         x86_64_linux: "fec3ddfdbc3977756920cd993725822619deb3f2c0117da99f99f06bc9090efd"

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
