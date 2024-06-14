cask "apifox" do
  arch arm: "-macOS-arm64"

  version "2.5.31"
  sha256 arm:   "2b15c62d7eb519f0dc835e9a822a4427d1fa0482c8082e208eea0bc5313d2380",
         intel: "43387cd1fe09d85fb891dfc226975a3c9b2c0e680b1c5346ad5366fe98005dc4"

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
