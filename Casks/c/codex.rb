cask "codex" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.156.1"
  sha256 arm:          "fea42f9625091f011e38f059da974d52e57ba31831648bb1c7f0b1a385fde547",
         intel:        "618dbcd55419fa041871f777a14b107ceb3fe2d339ef81e21e6ab5374420dc71",
         arm64_linux:  "fdd47ed6aade0360796fd3f6f95a45096f327c15e19e8c7339f9dc5633041786",
         x86_64_linux: "8b711520beddf385467b8da4d2c93736637c6ba1e46811cf0d8606b7c490b6f6"

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
