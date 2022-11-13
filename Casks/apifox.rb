cask "apifox" do
  arch arm: "-macOS-arm64"

  version "2.2.8"
  sha256 arm:   "627b3e30ca375fb9eeb278af8cd9953340481527527931c3751cf3cba99c2a09",
         intel: "4101b8c0f73d2c4398980aab6937ca9361149a4a4e026b1b5cf355e22266aae9"

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
