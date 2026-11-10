cask "codex" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.167.1"
  sha256 arm:          "5bcbc5866cbca19f9299f7884e9b39b9ccb5469969c170b1f2d2cd6fc4b1ee72",
         intel:        "ade991ce7fef5b4f4af884c154b9455d493cd0caf13789fc3ff9f842897b55d3",
         arm64_linux:  "ef3e1443a7795d596f1601a533d7225a1030488d60c965af1f0610ab95889031",
         x86_64_linux: "a945df3df83e849dd7b74787e27f8a459c1946b0e3afe3dc8eef8a8d1845fd4f"

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
