cask "apifox" do
  arch arm: "-macOS-arm64"

  version "2.5.24"
  sha256 arm:   "4f924bde11639f770a72835dd4530735ce5653e1cd0e8c1eeababa76724398e4",
         intel: "3819943267915dbfcbdf65eed2a746b0bfc89fe9de9195c064248bcdeebac340"

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
