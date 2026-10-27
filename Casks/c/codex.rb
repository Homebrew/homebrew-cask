cask "codex" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.165.0"
  sha256 arm:          "34d12384d90f8e09b0b9abaabf2a0ac02a52093b131504aeaf282107f54a44b2",
         intel:        "792ecab0596006bd9f286430b2790aa487fd40fca2f351ca313ad85991720226",
         arm64_linux:  "c8b2844fdef57498572db960344aee8c836ce9f75c203379da0a9c3a334fc3b7",
         x86_64_linux: "e97c4463d7f146692a955d7b0e1c8cf48f97cd4d616cd45c5dcab2e8d9743316"

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
