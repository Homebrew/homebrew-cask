cask "codex" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.92.0"
  sha256 arm:          "1a063ed387bb05ef0b2875a96417697308975ed657e019578bc478d74c1e2889",
         intel:        "7abefc8e36df743c7acfe5246293e3fd2e2958b137c9776f976aed8e3a91c9e9",
         arm64_linux:  "b742a6c534ac92ba9ca84dc15e0ea3ebbc0bdced0591e3b56b5a77cb31d61675",
         x86_64_linux: "757c00c23c69d61a8e372d9a05266bba0d6107058ad8902dd818b787f4825b31"

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
