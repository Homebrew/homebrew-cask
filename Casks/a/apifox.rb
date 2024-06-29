cask "apifox" do
  arch arm: "-macOS-arm64"

  version "2.5.35"
  sha256 arm:   "ee5d0819468633424db49115b3ae6b6db380a90a92aa521bdebc543eba0d43f2",
         intel: "fd6389ed16d49aa15974ed79ff94c8a10a193ad9c1ecbd7337c632f79b64ec4b"

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
