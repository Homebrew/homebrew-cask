cask "codex" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.150.0"
  sha256 arm:          "4a95905fc9ce4ab635bb6ad79a80a25c2b01cad52c37a8266a4d383a1d405c89",
         intel:        "130f119271a288c0d6140e2223fc221438287232ef8b161efcb9041076e83fc2",
         arm64_linux:  "834a15a0112e65520c56e716250992f130a484079c79bca93d91232d8a68b64d",
         x86_64_linux: "2d27b8569ca760eeb2bf21fa12bd31f59ac42b81617b340cf8958e9b38d743d5"

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
