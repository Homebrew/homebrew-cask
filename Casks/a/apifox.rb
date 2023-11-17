cask "apifox" do
  arch arm: "-macOS-arm64"

  version "2.3.27"
  sha256 arm:   "abba3ffb768b5e728d0ef1fe5b6e24eb44c1fe7cd2cb0d5e244d23010db99c05",
         intel: "a2d9d4ad2c229f1fed12f830bee619723c13f9ad2d22fd9d4e6ed69fef69b314"

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
