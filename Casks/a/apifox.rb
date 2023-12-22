cask "apifox" do
  arch arm: "-macOS-arm64"

  version "2.4.8"
  sha256 arm:   "fb2395dc49978c2211069aadd839db8fe2104810e087007133523b7c5be9be26",
         intel: "5aee6fa9f3f6296f44525ce867d0f78b88d9030074f055ce39d714a4fc33bade"

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
