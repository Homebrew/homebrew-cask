cask "codex" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.65.0"
  sha256 arm:          "50173d27bbfa193accbba81fcfd340d55df5d7c3517e9d9d07983590938fdca1",
         intel:        "8a88ae1d6275438fcf96a91e010a8eeb530985d063e644a8aa2ab65594c3ac6a",
         arm64_linux:  "4c23ed55b40e3720b0bd82cb8543228c6b2929fad1e3b48a48dbc529582fc2cd",
         x86_64_linux: "07492274a8a70c9f77f0a8a13d05656502ca8851bd3d35ef92eeb1a4227dfe14"

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

  zap trash: "~/.codex"
end
