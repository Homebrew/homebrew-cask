cask "blockstream-green" do
  arch arm: "arm64", intel: "x86_64"

  version "2.0.24"
  sha256 arm:   "75d14ab539700d0e47d471959093ff3dc54d7497e55f1b2c7928b2f7ec310d25",
         intel: "0ba23a1e3669558862b7c43bc565800501599a2ac50a673844ed21b7d2d47fae"

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
    "~/Library/Application Support/Blockstream/Green",
    "~/Library/Caches/Blockstream/Green",
  ]
end
