cask "blockstream-green" do
  arch arm: "arm64", intel: "x86_64"

  version "2.0.16"
  sha256 arm:   "c5ea0f0b034224182eb6f90a3b004f712e328a8719e3f273fdf51cf42d294025",
         intel: "f6ac90beea4464f4fed30f462fb27ac675d1f9263a715bd0707b8773203638f3"

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
