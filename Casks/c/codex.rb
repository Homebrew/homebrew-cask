cask "codex" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.149.0"
  sha256 arm:          "6c7589a52fe90e3742e35662115a4c55c39715601df0d41345ba8ec8f4221d4e",
         intel:        "ba332e647cc898e3b4e86a3bc6e8db414a124eb88d8480f4707bbc66b0432f9d",
         arm64_linux:  "dac03e4db966e94f7083b9eb9f95d8b40da9d568fd2fdbb6885b0ea7d5b0d97f",
         x86_64_linux: "1c08ba262820b78d49ea7a93f326b6b430b72e5fe46830e433edef12e5123244"

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
