cask "apifox" do
  arch arm: "-macOS-arm64"

  version "2.3.10"
  sha256 arm:   "4634e62e5d72e245c204291589711b37f07ba0ef0b49904719dc86a2c6517e27",
         intel: "5587dcfae202291bbdfd54532b1b045e48eef18fb0af26dd24c7d81cf0532c4c"

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
