cask "blockstream-green" do
  arch arm: "arm64", intel: "x86_64"

  version "2.0.6"
  sha256 arm:   "498f0c88180343c9065c30fecbbb285954fa242cb3ce184202160c0e3def7d76",
         intel: "6c6e0d6998c41f2d3886f1fca496344ef967bc30f5792c4b0c72001ed3be4998"

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
