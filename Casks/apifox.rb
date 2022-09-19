cask "apifox" do
  arch arm: "-macOS-arm64"

  version "2.1.36"
  sha256 arm:   "02a209bbc4a82b0885ba1d3ce69b17f9e7b25f4d520a9aad28978eb239a0764a",
         intel: "4c58a7aa0302725591346f0fe789de61a916608b86176f28488114f13048b3e2"

  url "https://cdn.apifox.cn/download/#{version}/Apifox#{arch}-#{version}.dmg"
  name "Apifox"
  desc "Platform for API documentation, debugging, Mock and testing"
  homepage "https://www.apifox.cn/"

  livecheck do
    url "https://cdn.apifox.cn/download/mac/latest-mac.yml?noCache=#{Time.new.to_i * 2}"
    strategy :electron_builder
  end

  auto_updates true

  app "Apifox.app"

  zap trash: [
    "~/Library/Application Support/apifox",
    "~/Library/Preferences/cn.apifox.app.plist",
    "~/Library/Saved Application State/cn.apifox.app.savedState",
  ]
end
