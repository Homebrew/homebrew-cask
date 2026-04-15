cask "codex" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.121.0"
  sha256 arm:          "60f7039e63a7de8ae474136ac6f593ec1a913e1ddca0df59ade1f6d6eb5f7fd0",
         intel:        "94e6ba8a552d4625beee857f513fb12bc20e560b9427c4a93733dbd86619f415",
         arm64_linux:  "d0de1caef01b5cb1dcc3d63ef6db100720879a9bfcf11996aa536c67d2fa8320",
         x86_64_linux: "278c72b03d4e1f661ba828c1ccf36eba2f88d8074c70e3f03211dbfb631273c4"

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

  zap rmdir: "~/.codex"
end
