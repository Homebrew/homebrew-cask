cask "apifox" do
  arch arm: "-macOS-arm64"

  version "2.5.1"
  sha256 arm:   "f291905f12b70a2aedbbd1cd1070ed3b4570dd9d56da0866d15b7c9b5b13b26e",
         intel: "ebad2630e6b9b7dcb010237a255c1b7e6c5a4061de89097a551db65f6adb9ba2"

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
