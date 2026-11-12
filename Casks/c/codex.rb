cask "codex" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.167.2"
  sha256 arm:          "e791290651bce41938fb160b5de2bd9ff8bcf3401ca3e236c73f485fca4be1bb",
         intel:        "d0c2ff50bf7366ab89d8213a498eead05ca01515098b290fb37a9b8dcad3e054",
         arm64_linux:  "56b08c1214e062a5b61684bacb5033c4372a01062a47c87c49a32be83af70695",
         x86_64_linux: "3d77be1748d35a4bb0e7f8752cde3b11890c63338e8c599f01eafa4a59e17b3d"

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
