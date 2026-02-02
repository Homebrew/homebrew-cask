cask "codex" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.94.0"
  sha256 arm:          "240b1465f7fdcb740efbb8aa606c86d128f1af52f7d21dbd8380474708cab72e",
         intel:        "771aa4bde3c7c49ba41a235e02eb40608149e4a0c4a0b484ac5f00c33914225f",
         arm64_linux:  "ce3255cf12423dcd50789e913cdceaaca1a168cc77a4921d90e7950b6fe74657",
         x86_64_linux: "aaecc54ad2fa26bbafc8f4d13129a2a016041181352fd7f8b47e357bb8c71ba5"

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
