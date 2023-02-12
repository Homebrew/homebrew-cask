cask "apifox" do
  arch arm: "-macOS-arm64"

  version "2.2.23"
  sha256 arm:   "991e7719fc250896e1edc4cf62641314f05b509d9e521ddce61a10abf77b3e32",
         intel: "28223dc1dbad173a6cc685d08e910a156f17d0ae36573ac3bf944e1402bc9010"

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
