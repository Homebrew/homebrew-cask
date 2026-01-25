cask "codex" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.91.0"
  sha256 arm:          "b1606d1f043d6c87cc9326e59d26b31353cd824d2fa7e9f465e4f12faf475b18",
         intel:        "b12afe6ec2ff005895e3ab331c67ecafd3fd0fc374d0698bd5698fba42b7d977",
         arm64_linux:  "7c5b34a9074cade61aaf51014a0967d4c63972fa67a11bd684def460577d81f8",
         x86_64_linux: "c733dd8506dd00d0ec36f32308dd902bae43ea935362fd7c4933c15af4d3c641"

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
