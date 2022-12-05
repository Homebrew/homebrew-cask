cask "apifox" do
  arch arm: "-macOS-arm64"

  version "2.2.13"
  sha256 arm:   "d5f5cb4c002f96e3226f88cab7513a0b5fdb3b45a7f5e1f890cb0a111199a93f",
         intel: "8b5d53383637c65e7ee57fa67ded21f2258f36cc7fbbf587f08d58f335c09305"

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
