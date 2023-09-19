cask "apifox" do
  arch arm: "-macOS-arm64"

  version "2.3.17"
  sha256 arm:   "cb10a430d2290f936539cd131a8bb26067ce0c4e045ecce199f14f753c1071e9",
         intel: "1d830a6b8d65bb2617d7ff48f6a9b085033690cdd8be504a905ef702a14a4539"

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
