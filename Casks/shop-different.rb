cask "shop-different" do
  version "1.0.1"
  sha256 :no_check

  url "https://files.departmentmap.store/file/AppleStoreTimeMachine/Shop+Different+#{version}.dmg"
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
