cask "apifox" do
  arch arm: "-macOS-arm64"

  version "2.2.33"
  sha256 arm:   "0afdc5fe0cc98125f249c3248983c939311ffc2594ce6e43f2f50342fe6f542e",
         intel: "2b2e7864c6d79b94cfcee60825d07359281ec0a0c7049b92ab7da4930a0c4d62"

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
