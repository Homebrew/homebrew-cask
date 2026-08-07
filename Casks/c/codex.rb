cask "codex" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.147.0"
  sha256 arm:          "17b2984eb22b607e3d0c25728252fc90f510e476bad39a6d9f45cdb1aa685432",
         intel:        "d91e59133daf923bc45d76e3da4af8ae9ef62a0231da18488da0cd573b6e9d63",
         arm64_linux:  "89cbf79bd5ae6f9c58da47e8079f311c84219350c9c43c070d42f3e9b2a81401",
         x86_64_linux: "bd758d53d56e41dc65e045f4589df79a038ed197a011adcb52a258e6ad64cfda"

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
