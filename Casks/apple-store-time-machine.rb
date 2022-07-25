cask "apple-store-time-machine" do
  version "1.0"
  sha256 "ccd9cdc75bbe1766a260bba5cbd5055fca9717b170fe6d010c7b352f672ad3d3"

  url "https://files.departmentmap.store/file/AppleStoreTimeMachine/Shop+Different.dmg"
  name "Apple Store Time Machine"
  desc "3D reconstruction of Apple Retail Stores on their opening days"
  homepage "https://departmentmap.store/timemachine/"

  app "Shop Different.app"

  zap trash: [
    "~/Library/Logs/Michael Steeber/Shop Different",
    "~/Library/Preferences/com.MichaelSteeber.ShopDifferent.plist",
    "~/Library/Saved Application State/com.MichaelSteeber.ShopDifferent.savedState",
  ]
end
