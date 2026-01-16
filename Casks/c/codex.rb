cask "codex" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.87.0"
  sha256 arm:          "36f1ea0096c585678f613b954ade4f14f6284f4655ddf66cc01b928e5484f9e7",
         intel:        "b97935fdd074b1d80121de7da5bc5f78d59493b920e95566265aa8f36b6d0248",
         arm64_linux:  "1190f742977263f94b014dcf179c149d7b16f158932a9725bf631f1178133df1",
         x86_64_linux: "0ea010af3d6dc35f10afd9a99e046a7fe1f5e28155258eb8ac1bde948d62809b"

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
