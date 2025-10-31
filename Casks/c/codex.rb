cask "codex" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-gnu"

  version "0.53.0"
  sha256 arm:          "97c70e291f8f1ebc2f060216290af97e0b8915400a79805fbadec12287a67cb6",
         intel:        "6515711ca312433a5cb1a5ca83517515558e46aa20f02c30b929964f9d552edb",
         arm64_linux:  "d17d5778ec787275a6756afc82be7cd946538391328fa715030c81579c717766",
         x86_64_linux: "fcdb0a728093f473dd952ff0860838547e7be63ec16c1926a479e54d41629ab3"

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
