cask "codex" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.103.0"
  sha256 arm:          "72642a35a294b9b1a4f278368d5c79749b66e0da6712082d6b130b9cba1990ea",
         intel:        "5e5f4d476eba54291572e10ec29307f69c87190604f25b7a069880cda535914e",
         arm64_linux:  "ba434bebfd978056233dd20a90fb0d553d64f24cbc16bffb4c0f02a9ee3520ba",
         x86_64_linux: "8d5f6796e89ec145480faaa64f5c2e893fd3cd869a27969ad1b44c5e765d41f6"

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
