cask "notion-cli" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.15.0"
  sha256 arm:          "e06cf11504fb119b37dac02f0c744b082c2abba58ea16e0097ff6a4c74bd141a",
         intel:        "29f6089eb9ce9842e0b429ae1ef6189dd07a3b541098ea498ea6bdb5523fc72d",
         arm64_linux:  "963d0ab5c50b49b344498f600d75b43821f167d46484682b4437e81947e19548",
         x86_64_linux: "c467901e206f3fe4ff7690978749c5c8dea59518987d3c1cd66d1329df5d2f1a"

  url "https://ntn.dev/releases/v#{version}/ntn-#{arch}-#{os}.tar.gz",
      verified: "ntn.dev/"
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
