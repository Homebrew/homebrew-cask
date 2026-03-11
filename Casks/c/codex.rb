cask "codex" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.114.0"
  sha256 arm:          "c98eb550695f99eaec27df9971a1b76a83acb15eb55522383fa31b0497297c54",
         intel:        "b0c7ce9f6e3693ecc150bc0cb95b4a1766d7b849747090e5077de8d4d2cac974",
         arm64_linux:  "7d30735681077c13b6f0da6e882a3aaf9658df20d155f5d99222fb7b1d290099",
         x86_64_linux: "9229de8c51c8ef30565bb507c97a2edc04a80b38e49a4363f337fe05bedf34eb"

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
