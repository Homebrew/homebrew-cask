cask "apifox" do
  arch arm: "-macOS-arm64"

  version "2.2.11"
  sha256 arm:   "8487c289c2f3333141f6675333bc95eb2427638a98fc213c2c0a889265faee96",
         intel: "bd31816fda1f2ce9c34b55215f7a9c243220723d13070a0bb1e337fcff1451c2"

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
