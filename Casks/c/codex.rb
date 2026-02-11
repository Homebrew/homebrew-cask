cask "codex" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.99.0"
  sha256 arm:          "ed3d36c9c9b1a8b731e1d900a155365fb5e76290bdf2a27c769bca811ae5174f",
         intel:        "4338fb739985d33e033f381fe964bdac5d972434f1c6c26022c8fb486ec3f7ce",
         arm64_linux:  "3371613b852a42b1792cdde8bf2bb6755a24a8359526f72bda0f5560e97fd45a",
         x86_64_linux: "ed309cb41415240afc86677bc332cfe11962c946ea82179689cfb207dee80d2f"

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
