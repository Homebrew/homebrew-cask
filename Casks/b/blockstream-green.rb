cask "blockstream-green" do
  arch arm: "arm64", intel: "x86_64"

  version "2.0.7"
  sha256 arm:   "42730aadef276499385b19e79cfcb5c3c8f7258a46171a557dc695d20c060352",
         intel: "53e6a54355152a91e54ea4fb3ba458e7376206674176baed57a2d99e19a7f69d"

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
