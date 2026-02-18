cask "codex" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.104.0"
  sha256 arm:          "b70151e038a055524d4d000e80b4b7d15586165b847674a0c32165d11dac2711",
         intel:        "6ca2244f85600bc0bb92744a4807b39002e7378c4e4732d09ba7bb0ed794d4ec",
         arm64_linux:  "814caa55f1016c3cce950e92e0bade04e00e1c823955f6c2b020883e862d1aa6",
         x86_64_linux: "e109680d78323e8e8e77b1b223a25776feea6e040eb06f50c8a4390f593cb298"

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
