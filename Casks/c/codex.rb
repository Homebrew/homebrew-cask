cask "codex" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.61.0"
  sha256 arm:          "479cc48b998bdeb5a0289883130135a51b2155666478f68ac4bf18f5dfe56102",
         intel:        "aa0a2f706edb4823b39b5b16628ed23e2df6775bff61c6107639537f92e8b4b1",
         arm64_linux:  "32cf34c2bb213c3d88f3587095db5ae3df6d255a40009df82a3872d36f97231a",
         x86_64_linux: "ba23735bc14d2bf19ed3da342daedd33bdb1b60a71be526f51245ac9d6178359"

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
