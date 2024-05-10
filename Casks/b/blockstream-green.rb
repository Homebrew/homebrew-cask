cask "blockstream-green" do
  arch arm: "arm64", intel: "x86_64"

  version "2.0.5"
  sha256 arm:   "68fdf1e89b6e28baa356418e93c9ade0c6a62dd1399e030d008ad5d7a80fcf4a",
         intel: "7f98190eb037d7682d5ed54954f07dbf9df14b44a3dca91bb108fd553fb3cc0d"

  url "https://github.com/Blockstream/green_qt/releases/download/release_#{version}/BlockstreamGreen-#{arch}.dmg",
      verified: "github.com/Blockstream/green_qt/"
  name "Blockstream Green"
  desc "Multi-platform Bitcoin and Liquid wallet"
  homepage "https://blockstream.com/green/"

  app "Blockstream Green.app"

  zap trash: [
    "~/Library/Application Support/Blockstream/Green/",
    "~/Library/Caches/Blockstream/Green",
  ]
end
