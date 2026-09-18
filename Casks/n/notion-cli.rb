cask "notion-cli" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.23.7"
  sha256 arm:          "2dd7fd7d64c2d137c7e7a7dfeacfc8eb47ea2c7f385205cc51ca9696df9d7370",
         intel:        "695005751c719c7f8326b10fdfca0dcc3d46625595919f0301c31475047df2f3",
         arm64_linux:  "33b44ad698fcf27c95e8f41111d0021dae04a9cd6b8940620641e6c74775c3bf",
         x86_64_linux: "928d44db2a9597fb3e9dcce9c22679b21536c566d6e5bf1b8c3a24804cd21b84"

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
