cask "codex" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.56.0"
  sha256 arm:          "0df02ad6204b4f67190e65cb3036053f767813e2a32127ba19821d648e1f550e",
         intel:        "42e482d680d47ec9d0e97ca94039266950f91e0010b45fb86d4dccb9c2a9da87",
         arm64_linux:  "71bab65c1cce9254f94de6e51ce431b793da220d66cc4666306d17c4b92f14e2",
         x86_64_linux: "c5645428b4ff6127e677cff44486da4b8042fba7658334fe47f15425c0e1cdb2"

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
