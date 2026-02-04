cask "codex" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.95.0"
  sha256 arm:          "4e1471e2473142090e486c9766173e46ab51d0772b48ba268343f6af14093f70",
         intel:        "01ed4c86d1f53118b4758da72070155f946072ca56efb0ec4cd64f9958927a21",
         arm64_linux:  "e7fe609a7520c456d6f9b6eed9eef599116b03b0829252503565943cf7f363f0",
         x86_64_linux: "47ea068bd50767f10e98c83e76574556466a7dcd277395e3ef356c5a5345b9a5"

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
