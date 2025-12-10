cask "codex" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.69.0"
  sha256 arm:          "f745ac8222abb194da3fe6e9fddc0cee46770abe83ad132fac5b59205d40f6c0",
         intel:        "763f6812b07cc378659b015f7733366911f8150bf529adfc17fb6db6bc82ed38",
         arm64_linux:  "069be0d408defa36612f40e4182f712467e7b15e1261d5d184a0de8d46a6a729",
         x86_64_linux: "1265f319988c2bab19e11aa4a18c7962264c705e2b7a6bcb3dbfe2a8f72c429a"

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
