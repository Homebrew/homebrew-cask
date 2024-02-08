cask "apifox" do
  arch arm: "-macOS-arm64"

  version "2.5.4"
  sha256 arm:   "668215560b161821d85fceb80969869d24a68ad70acb222fbcd139a8d9ee8fc1",
         intel: "0a1ba2819c283377bf8e998cac8caff70ff79e183215c9a22c8d8ac74d59f113"

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
