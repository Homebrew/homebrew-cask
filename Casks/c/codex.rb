cask "codex" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.55.0"
  sha256 arm:          "014a41a1ada02295141c13450cdd2d6bdf7ec5aea1709f9f1792e9039d469e25",
         intel:        "5c23e32b6702fc2d247a3cd08d63a420ebe1ea64104827100fc5bdb77ac92486",
         arm64_linux:  "49086dd6f38f828a67a988b252841af41e6bfd264cd8cafe9b0067631584b3f9",
         x86_64_linux: "58c09cbb95e8c6ff091a9e8b0c0f9bb7636e12afd395234796e6dbc05ca84797"

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
