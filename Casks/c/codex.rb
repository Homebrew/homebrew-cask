cask "codex" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.88.0"
  sha256 arm:          "c4182ce60ad5b01ecf3ded794a753112fdff5a447b2ab4521a5ef96635a3b78e",
         intel:        "28d941ba475797ff9ed9cdefdc2c0c2e969986687b336441b9ef6ee330b62dcc",
         arm64_linux:  "023ab03d71987ae3482772c978d7f5b1137f8f1061065d74344e277ff11bc767",
         x86_64_linux: "347212f7a0718f46c885133ec12d5627ba80d1eedcaee29e40d4d0b1f4b231dd"

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
