cask "codex" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.149.1"
  sha256 arm:          "4cbb17468b5d86b4b182a28c016d62e9d273a241cec04885ccfae76e6983ae3f",
         intel:        "4c50fb92bb238a4067009d4a99c13351325c8840da91edd0ce4e5b7a21d53bc3",
         arm64_linux:  "57095f9f4ced36d8e173f67e26c5c142d5b3e1e1984bbcae35684209ed236a9b",
         x86_64_linux: "1e8531ae5f6dea3c6e11e53e74cc5ac81bf1ba597f9b296fb112d6ea30fdaf5d"

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
