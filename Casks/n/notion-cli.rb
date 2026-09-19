cask "notion-cli" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.23.8"
  sha256 arm:          "b6db1cb669c05299c2932db0e9d25c7aeafd9663c5937bb61b6408667c5752e7",
         intel:        "1d5cec232cc48526940fdff49ab5aab287292febffb2c4071eb72e6a9dbae84b",
         arm64_linux:  "8a31708c9881ca1d7e1ea49a69156bf17aa8aff940759fc4a4523e001ea7745e",
         x86_64_linux: "f904a09883a70a30d00da8176909f3d3b70cb14d7731ea7d22289152193cae7e"

  url "https://ntn.dev/releases/v#{version}/ntn-#{arch}-#{os}.tar.gz"
  name "Notion CLI"
  desc "Command-line interface for Notion"
  homepage "https://www.notion.com/product/dev"

  livecheck do
    url "https://ntn.dev/latest.txt"
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  binary "ntn-#{arch}-#{os}/ntn"

  zap trash: "~/.notion"
end
