cask "codex" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.135.0"
  sha256 arm:          "bfee529ae8eb685214c8aab661d8d6b439b32365d2cbf9d50521cd6996d4b33c",
         intel:        "7e26af0c4514ee65c6f8374984b42b6fe3f7cf69732b62305f85f2c27cbdc6e5",
         arm64_linux:  "568bce1d593ef25ffdf5549369a8606085652294646a5c4961547a894ea2f76d",
         x86_64_linux: "a15e7dad657da4a0e120eede29556fee6d50e8c919759cc2ecba3c99099363e2"

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

  generate_completions_from_executable "codex-#{arch}-#{os}", "completion", base_name: "codex"

  zap rmdir: "~/.codex"
end
