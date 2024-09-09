cask "blockstream-green" do
  arch arm: "arm64", intel: "x86_64"

  version "2.0.10"
  sha256 arm:   "cd58bd45217f1585484c90063355a018753f9dd57f75111735823072e206fc4d",
         intel: "8899bafd23cbd397406946ee0499b2031bc1ff46a8bd005f161e25e3499b0269"

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
