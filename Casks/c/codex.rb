cask "codex" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.123.0"
  sha256 arm:          "035758b82493abe3b62a8d563b17d835988982c83f6ac6eb451bdcb8dc6d396e",
         intel:        "784e5065b922668ad9a89a28d3d532868866fe65ae0289d6d5866ba2b6ff2de7",
         arm64_linux:  "18a7230e89e7353c4d05d75017553434142dae3dc75dc4888174cdbc36309591",
         x86_64_linux: "4b127fa3cf69443c6d2e6881a883018b6737b488b99d01d812e38628f57dd2c6"

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
