cask "codex" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.74.0"
  sha256 arm:          "5a3a9d46eef4877b87efcaba2e770add2d4ae01bc7ea4c706f8dabbbe7d384ec",
         intel:        "d34f27210a2ed17e8bbaa61db62a5056f7d1c942580d41b65cf0b7b435514135",
         arm64_linux:  "725ce8cc76ba7498a8597719bc2bfd935ab3dcf56c1cb579179e3d7a07676620",
         x86_64_linux: "37259b6bbe54328d4c45856ae18c91c651a499c5b63ddd7542a48e238576fc25"

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
