cask "apifox" do
  arch arm: "-macOS-arm64"

  version "2.5.17"
  sha256 arm:   "7fe559ae16653a9ba7b64b405a99a1b9c259caab910a64ceb14d15bcc53285ff",
         intel: "93f74849adbf5cd6d4f7521f0536f4aef304aadcf8e01078ff93f4fe62c175fd"

  url "https://cdn.apifox.cn/download/#{version}/Apifox#{arch}-#{version}.dmg"
  name "Apifox"
  desc "Platform for API documentation, debugging, and testing"
  homepage "https://www.apifox.cn/"

  livecheck do
    url "https://api.apifox.cn/api/v1/configs/client-updates/#{version}/mac/latest-mac.yml?noCache=#{Time.new.to_i * 2}"
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
