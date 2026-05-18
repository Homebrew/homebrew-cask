cask "codex" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.131.0"
  sha256 arm:          "5997e22af1a05ec303be6e06a9f8cd950da38da4b909b6819747f1782e66825c",
         intel:        "7359093511b8b99c8ed06f4500d2148515a719e4c256d5d115e960d4b8a9630b",
         arm64_linux:  "dfef7c98b67bd1cc857ef5c505b6eee78872610e6bcdc19dc174d695a56082b6",
         x86_64_linux: "f5b26732b76c9543742f7937a7c88f879e00c0a73b673008043a5cee63e8361d"

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
