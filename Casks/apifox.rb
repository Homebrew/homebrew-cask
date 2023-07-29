cask "apifox" do
  arch arm: "-macOS-arm64"

  version "2.3.8"
  sha256 arm:   "41acb863e498779ffa9fdb81e368ac1f344ac702ba63eae1df5fc1bd266751df",
         intel: "d2c7f5591be8f4cfbb0e069cc17aa5fd8e420edfb2d93085a2d8b1976149aa56"

  url "https://cdn.apifox.cn/download/#{version}/Apifox#{arch}-#{version}.dmg"
  name "Apifox"
  desc "Platform for API documentation, debugging, and testing"
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
