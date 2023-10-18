cask "apifox" do
  arch arm: "-macOS-arm64"

  version "2.3.21"
  sha256 arm:   "5c55b37571ce45bb7571124c590f0f8ef92ec9c94d3348de725c876bfe51dc3e",
         intel: "23083f5fcead892f9e624ee216264e5e62e718c1167a8c87dfec09a244de1fdf"

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
