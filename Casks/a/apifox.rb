cask "apifox" do
  arch arm: "-macOS-arm64"

  version "2.6.3"
  sha256 arm:   "ebc9107a8cfb933c9f2986b9fd2a385da264253999542a68d3e69a4298b169ce",
         intel: "2f21af14a8b262907a9fb977ab6080d1b59308a29e0237ef25209fc67deff25c"

  url "https://file-assets.apifox.com/download/#{version}/Apifox#{arch}-#{version}.dmg"
  name "Apifox"
  desc "Platform for API documentation, debugging, and testing"
  homepage "https://www.apifox.com/"

  livecheck do
    url "https://api.apifox.com/api/v1/configs/client-updates/#{version}/mac/latest-mac.yml?noCache=#{Time.new.to_i * 2}"
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
