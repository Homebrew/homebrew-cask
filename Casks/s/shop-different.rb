cask "shop-different" do
  version "1.0.1"
  sha256 "513f2d0a9492ca7efd36dfc921229be4771bf86f3734faf5a13218e6a6d8173c"

  url "https://files.departmentmap.store/file/AppleStoreTimeMachine/Shop+Different+#{version}.dmg"
  name "Apple Store Time Machine"
  desc "3D reconstruction of Apple Retail Stores on their opening days"
  homepage "https://departmentmap.store/timemachine/"

  livecheck do
    url :homepage
    regex(%r{href=.*?/Shop\+Different\+(\d+(?:\.\d+)+)\.dmg}i)
  end

  app "Shop Different.app"

  zap trash: [
    "~/Library/Logs/Michael Steeber/Shop Different",
    "~/Library/Preferences/com.MichaelSteeber.ShopDifferent.plist",
    "~/Library/Saved Application State/com.MichaelSteeber.ShopDifferent.savedState",
  ]
end
