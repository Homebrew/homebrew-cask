cask "codex" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.153.2"
  sha256 arm:          "287e2dd0a9bbfb58581b0a9150399458b4f094ea42caf02860f1e8cb5a202a0b",
         intel:        "6e3876e7f4edff2e3dee545e1d3b2334866791a8dfce7e25789bf6799355a4ea",
         arm64_linux:  "a3bfaf4b62fcb17e0a0338dfe0502413ddce0ab1b39028679390539c45d2c6e3",
         x86_64_linux: "e10fa0cee78e9f0bd395880f03fd4fd227d903ca7af649bbc08d1649101e9225"

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
