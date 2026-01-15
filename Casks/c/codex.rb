cask "codex" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.85.0"
  sha256 arm:          "c75bb4530ce26239822fc9a7c025bcc28595872f37c791f7bb9f4a4bc27b8669",
         intel:        "6a791aad2f9dff82c6682cefd2b98693776cd1a1b624711fb8f45e9e29b5fccf",
         arm64_linux:  "89003d72af2fd8b70da23c07927168b616678c405fcc9a01f6bcdb5fdd61ab4d",
         x86_64_linux: "787a56563c25b164a6d19dd87a0d34249cfd0623090ea187736fa8d3ed11a1b4"

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
