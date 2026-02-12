cask "codex" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.101.0"
  sha256 arm:          "fc087e9002be0e170bfeaa27659e377821e15ab978b4a49075ef95db5f8207f8",
         intel:        "51d4e3517c75f0933132be3365f33b08036d43d3c20692b30f5cc36dd3eac3e9",
         arm64_linux:  "f5c4b1147332a1cc4108b776c759ee7b409d365e5830a4e59667e1f9c7e6da60",
         x86_64_linux: "ff363f8597dbf0383c17659e7c92735baa991be8ab99f967c5cc3c68b329277c"

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
