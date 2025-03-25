cask "blockstream-green" do
  arch arm: "arm64", intel: "x86_64"

  version "2.0.22"
  sha256 arm:   "002e3d8baeee7c969732c4cc2e40b0bce254ef9015fbfe269aebbd4b7ba0eb37",
         intel: "81cf56cb776fc355f28dc367cbe8e178a534a7bb9ac54e1dcceb6adc78093549"

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
