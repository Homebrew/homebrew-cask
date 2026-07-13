cask "codex" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.144.2"
  sha256 arm:          "8c04476d562aaa4ad62f72d6b2f6dae00d1c686e1d0d87f6dd801ced406fad84",
         intel:        "e32d1c027be235d3f3d1a88ff4b52631c27084e783b2dd1a5dcaee1ab78a08a6",
         arm64_linux:  "9c74fd4c670e5366fb4de8ad2d4291eb486214ba44fbcca7cad47aa55d6d4d3b",
         x86_64_linux: "1044b66e2736857623b7ad5a0863b1018760cef0998da0f18768d4349826a3be"

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
