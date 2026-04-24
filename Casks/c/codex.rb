cask "codex" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.125.0"
  sha256 arm:          "6a926dc0cb9639d349b62beda1907c53cb1349709e7dc9cfc53268f438cb749f",
         intel:        "b46019584d15814c235696bea75bff0d378e6d14997a268846b675501fb5c089",
         arm64_linux:  "700bc3b240963d6ae0f4f6078d4ede0eb07999ffc08d1348b8b091deac4b79c8",
         x86_64_linux: "4a20a53943a7e6a0c5fa4463d4e47c58dd8e553ecebde455a4107e9906bfb001"

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
