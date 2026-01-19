cask "bettermouse" do
  version "1.6,8612"
  sha256 "761bda260e8daef8cc5392ee2b518f912073c60ebfbdfe9fed4535a51288038d"

  url "https://better-mouse.com/wp-content/uploads/BetterMouse.#{version.csv.first}.#{version.csv.second}.zip"
  name "BetterMouse"
  desc "Utility improving 3rd party mouse performance and functionalities"
  homepage "https://better-mouse.com/"

  livecheck do
    url "https://better-mouse.com/wp-content/uploads/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "BetterMouse.app"

  uninstall quit: bundle_id = "com.naotanhaocan.BetterMouse"

  zap trash: [
    "~/Library/Application Support/BetterMouse",
    "~/Library/Caches/#{bundle_id}",
    "~/Library/HTTPStorages/#{bundle_id}*",
    "~/Library/Preferences/#{bundle_id}.plist",
    "~/Library/Saved Application State/#{bundle_id}.savedState",
  ]
end
