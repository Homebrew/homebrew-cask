cask "codex" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.156.0"
  sha256 arm:          "6f7bdad25693f464a146ad6f24d477ad6fbffe07b62556f829ee5d3b04f48f8b",
         intel:        "41ed9b4be611af74149c8fc9bc5f2f217117de368d6725555087b331e19f4d89",
         arm64_linux:  "ff07a585b07be3192233efa987cc31164c48954636f583806664afb44bb6b8db",
         x86_64_linux: "e8b744b03adb90b296bf632c8a29167e75ea1b9d2980e49d3dfc6e84f5dba749"

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
