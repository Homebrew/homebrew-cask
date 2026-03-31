cask "codex" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.118.0"
  sha256 arm:          "bad3c2c83b874b767ce86af64f4f005bc14dea79f2d8cac37cfa6eb77710c717",
         intel:        "2234b35a4df459730442399368d58404d838e7d56b226f66df1dcb4ea5b431cc",
         arm64_linux:  "29bc741268b6d17ddd148b8c2c2108e8b3a0eef914b07922491348144e667e09",
         x86_64_linux: "e707ea65d7bbbc46a04afe731bf3c14a5b77522100cebf8bb93cffb95cf4610b"

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
