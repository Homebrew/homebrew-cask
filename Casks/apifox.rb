cask "apifox" do
  arch arm: "-macOS-arm64"

  version "2.2.30"
  sha256 arm:   "52adc8ffac30cdb39e0d103176534ace1fac3ea9054fffb951ffbc8ff3bfacf9",
         intel: "50624a8c208ab8cff8f1a5b9af19f7c22b998c5b88b62d1f93e66d86e1e4e7e6"

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
