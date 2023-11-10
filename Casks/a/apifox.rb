cask "apifox" do
  arch arm: "-macOS-arm64"

  version "2.3.26"
  sha256 arm:   "5b97a256733f9420ee0d694c8c3b7f8f22c1e95c38f8cabdfb6e556c2430d43b",
         intel: "f95293945f3ff5e1939c6ef06024d895b3748706a27b3ec797523528eb399c06"

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
