cask "apifox" do
  arch arm: "-macOS-arm64"

  version "2.1.39"
  sha256 arm:   "b2164c2fd10494a933800a979c84a10a2ed5ec68cc82fefeed8498eebe4e1792",
         intel: "2c59e93f98943592dcb7313b77a8dd31a113e8f1cf1c2a44951618a63062d275"

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
