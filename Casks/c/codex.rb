cask "codex" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.80.0"
  sha256 arm:          "245c7a90566b3740f1ca9ef1d84bfb2edb98980718f0c27df2ae919dfea0f21c",
         intel:        "bc29de4908d0154774650c0a0a65687b40bb50ab6d2e01812161efc1eff8c86e",
         arm64_linux:  "48ab2616d4a1cd46ba6f03d329cf5754e86c42d63d7a9ee1ece7e29403928b3f",
         x86_64_linux: "7f4657480a4849055b864289f204949a38970f7e8bb41dee82b6466c676fe45a"

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
