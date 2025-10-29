cask "codex" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.53.0"
  sha256 arm:          "97c70e291f8f1ebc2f060216290af97e0b8915400a79805fbadec12287a67cb6",
         intel:        "6515711ca312433a5cb1a5ca83517515558e46aa20f02c30b929964f9d552edb",
         arm64_linux:  "a8a1dbcbda4b9a1f89e7c3efb69197159b4c81d2bbac72ca60449e0d6e715e9f",
         x86_64_linux: "55160ac3076f8c0cac8015ac4a1725e4368c15cdcab1e9d97d27c13757d4ffa7"

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
