cask "apifox" do
  arch arm: "-macOS-arm64"

  version "2.2.28"
  sha256 arm:   "0ac439aa046114de1ad1d8bc5f51acb9b8b22a4160d60e3b78bdff21638f39f2",
         intel: "7f2ae01575e6da890307c61acf4870137089a749f37e731f3973c108842efe7d"

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
