cask "apifox" do
  arch arm: "-macOS-arm64"

  version "2.5.13"
  sha256 arm:   "b2e820b6cdb781478f7ae85c9c2f3f607ed7b1ac9f2822dd892718a0fb418554",
         intel: "47dbd8004f20efce11b32b3dbb80754361fb94890690a6d74998271cecf7bd34"

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
