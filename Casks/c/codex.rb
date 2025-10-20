cask "codex" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-gnu"

  version "0.47.0"
  sha256 arm:          "3eb834ce4bdbd7e63f8f92c8f140a1ce61f1ebed34dfb31b19a033dbfb1cc201",
         intel:        "3beffcac6f5ead83c1c2458bee795a1bdecfcbdb9cd409871b6f8be3e44798a8",
         arm64_linux:  "b8e050dc0940d5375ab4b9d9fe08b7cddf0c6608a2c94bfe5e007f664b677b52",
         x86_64_linux: "89694a9347fc8adb723645bad5cd25a6afe393cb2896f37a8beaa594412463f2"

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
