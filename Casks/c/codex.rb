cask "codex" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.78.0"
  sha256 arm:          "380a917843034018063f97f2db0dfd7a02e61e4338f3b9a867eeaad276f34ac0",
         intel:        "6c9966318c2e43e7c33cdff955f49e4bc8dbbeff4b2bad78819779b67c36bf84",
         arm64_linux:  "2dcdcb62d72f848e04dbb5937d872cf54d624a20cbb051e121f6377d21993342",
         x86_64_linux: "e1affc8f509172999b5df089c531cc6f3d1d354ca9ccf301603930cfe28702e4"

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
