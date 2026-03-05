cask "codex" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.110.0"
  sha256 arm:          "febb86c5458d101a80a17347c89c0f0907a605e7cabaf2f927af08df367c3161",
         intel:        "de422a920eba13046ea131fcb542e8508a426a323b32a373a51340523574a44d",
         arm64_linux:  "aec275234f3ffe8cf950d8f2a74f681464c8042f369ea6dab8a3bf7b7e43dafc",
         x86_64_linux: "1241843f8eb0efd3208bccea5235938a8dea471be9de4af657658e90339c9fdc"

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
