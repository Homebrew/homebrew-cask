cask "codex" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.122.0"
  sha256 arm:          "74e6885e1a58d78f0249faed126eb6ab220f9ce34e7623f9e4108255035d61cc",
         intel:        "de8b64e1416445162c8060161d0ead76c277754a6dbc2b369725e4fd10181c5b",
         arm64_linux:  "bcc3cd4b809c7a4de39c0e2b7d2008e8808868299c1bc82474b695385e1b618f",
         x86_64_linux: "910f25d1a9222dec39b531bfe156422b5aa0afa9def391aeee13fb17696eeba4"

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
