cask "codex" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.76.0"
  sha256 arm:          "efae1df84a0e1b65b94d2e6d62e6c7473bcf4fa4591d89c9f142dbc8c80a1fd0",
         intel:        "623421050126c8fcaf9a16b5dc0e21dd09483caae299ef500601f7930524fd1b",
         arm64_linux:  "1ca95a424ebb48fff663591d7c3b562f26c48f5e634fa6ea83f90830873584c7",
         x86_64_linux: "24e967db850ffc9fd03a0f7037f3adae0cb4ea011ec308e666976bb6b94c8c28"

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
