cask "codex" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.64.0"
  sha256 arm:          "6712a002d32e050f42919e1552a316821ada9d9b347584bb971b840ff7295e71",
         intel:        "a73ef8e63c9e666e975a1757ae3789083a5e34eb3948bc292e378ef2cbcc3d73",
         arm64_linux:  "e8eaa653d4fc6dc1290c8704b999c93328b8339a3a171522c31713365a09bf67",
         x86_64_linux: "96da930be0dd55ccb34bf7acd8e310aa236baabb10cbb7f6e9ae2506caf11901"

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
