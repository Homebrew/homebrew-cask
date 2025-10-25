cask "codex" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-gnu"

  version "0.50.0"
  sha256 arm:          "9b8c723e456476b3394af3df7b3dc9826be76af137399958dc686cd5c9b68ffe",
         intel:        "8ab3e18a16b07ee32b955570e546e990d77bdfbf3732ac53db6a6eb447f0ffa7",
         arm64_linux:  "14461973a398b3697dcb3568f85744fe56de014b40a23a3f07916cfff6224106",
         x86_64_linux: "42402329dbdceb044316a82170f68531bafcff43ecec3d8850418b2ca6693287"

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
