cask "codex" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.139.0"
  sha256 arm:          "4cda925741331880fd18acfe0a40c63fbb08e7824c0b277c9b986b3fcf0438a2",
         intel:        "d866899e8967d08dff778d15ec687825410325c1191fed0eaab448b3d807546d",
         arm64_linux:  "d5fc41a310b1ae36c1f3bb366f7d5170dc2ae04aef4b2d73f0322869e7cdedba",
         x86_64_linux: "8641a47657ab347db65f1a7533905d3707aeff2882549a35187aea1362f9228c"

  url "https://github.com/openai/codex/releases/download/rust-v#{version}/codex-package-#{arch}-#{os}.tar.gz"
  name "Codex"
  desc "OpenAI's coding agent that runs in your terminal"
  homepage "https://github.com/openai/codex"

  livecheck do
    url :url
    regex(/^rust-v?(\d+(?:\.\d+)+)$/i)
    strategy :github_latest
  end

  depends_on formula: "ripgrep"

  binary "bin/codex"

  generate_completions_from_executable "bin/codex", "completion"

  zap rmdir: "~/.codex"
end
