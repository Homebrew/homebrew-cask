cask "apifox" do
  arch arm: "-macOS-arm64"

  version "2.2.9"
  sha256 arm:   "e5694b0f357c66d28fd9fcb23d8ec051bdb399f5378aae1410006373236dd221",
         intel: "78d74bdfd603f560ddc0755af9a244be2d315fc2f3a44217dce3d26507872caa"

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
