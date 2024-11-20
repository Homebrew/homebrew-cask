cask "blockstream-green" do
  arch arm: "arm64", intel: "x86_64"

  version "2.0.14"
  sha256 arm:   "636aaf69ba116096f6b0d6adb6388d9eccdadb33ae08c81d3b42950ce83bf455",
         intel: "62e71c5ae488c1b71046cf0768a5c0c55e0dc167fe70a4f3d313a9ba43772602"

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
