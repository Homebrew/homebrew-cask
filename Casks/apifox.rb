cask "apifox" do
  arch arm: "-macOS-arm64"

  version "2.2.0"
  sha256 arm:   "9031cbbf44087e8c2ad859fa765139592da48fd2cd04b89036c255d6facf0a35",
         intel: "4501af5c47e7a3788fbaaf6fed2b9e6ce2e9cf1b4b3b1a5a560159177ddd2fcd"

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
