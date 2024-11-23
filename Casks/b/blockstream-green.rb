cask "blockstream-green" do
  arch arm: "arm64", intel: "x86_64"

  version "2.0.15"
  sha256 arm:   "3cdab0f600229f565f056e0f257ee880cbd949ef40396089c86a565c8dcb937a",
         intel: "6ed87e314a3dd8af8bd60b8404fa95933285e1d15d9053761c552ec16bc45d2a"

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
