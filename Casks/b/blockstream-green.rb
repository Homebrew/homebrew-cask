cask "blockstream-green" do
  arch arm: "arm64", intel: "x86_64"

  version "2.0.17"
  sha256 arm:   "89125d848e058e18d37b5826604a3aa812a31a26f0ee56d035a88f6860c2cce6",
         intel: "6382f8700307e09aa7e37a8ae5e9cc412c498a641b4db4292ace4b7e5960e33c"

  url "https://github.com/Blockstream/green_qt/releases/download/release_#{version}/BlockstreamGreen-#{arch}.dmg",
      verified: "github.com/Blockstream/green_qt/"
  name "Blockstream Green"
  desc "Multi-platform Bitcoin and Liquid wallet"
  homepage "https://blockstream.com/green/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Blockstream Green.app"

  zap trash: [
    "~/Library/Application Support/Blockstream/Green/",
    "~/Library/Caches/Blockstream/Green",
  ]
end
