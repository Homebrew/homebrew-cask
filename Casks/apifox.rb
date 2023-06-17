cask "apifox" do
  arch arm: "-macOS-arm64"

  version "2.3.1"
  sha256 arm:   "59f6dcd54491e4339396ca6dd085ac78efab5fa3ebf4f7fc22fcfdade8db13fa",
         intel: "62cabd3eaa583616cba71f28f4a10b19567a775a3132fb5059cb22396dbf7214"

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
