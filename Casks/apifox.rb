cask "apifox" do
  arch arm: "-macOS-arm64"

  version "2.2.31"
  sha256 arm:   "c32abe49d5ba031747d54eeee71f018d829d8bc84668095bf640f01dc29d7abc",
         intel: "489f68d0ec61c73e211c005fdcacefaba608d543032d2c3fdc389fbe63251608"

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
