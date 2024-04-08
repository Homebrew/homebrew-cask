cask "apifox" do
  arch arm: "-macOS-arm64"

  version "2.5.19"
  sha256 arm:   "6d7da2e6e7c43c2c717fedf36d062c08d6ba5458f2325834fa94fd62813929e3",
         intel: "5331a8eaf75c91cbec92b96764d62e7015c22e0f70154d2b199b82dc4bf15dd3"

  url "https://cdn.apifox.cn/download/#{version}/Apifox#{arch}-#{version}.dmg"
  name "Apifox"
  desc "Platform for API documentation, debugging, and testing"
  homepage "https://www.apifox.cn/"

  livecheck do
    url "https://api.apifox.cn/api/v1/configs/client-updates/#{version}/mac/latest-mac.yml?noCache=#{Time.new.to_i * 2}"
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
