cask "apifox" do
  arch arm: "-macOS-arm64"

  version "2.2.32"
  sha256 arm:   "dc0efd9bf72bda17ba840f020cbc7188a1d890d2040c1510291cdc1220dc589b",
         intel: "b830aad58188bb361562c25be3ed10370f712a8aaeba1352f3eb948173450286"

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
