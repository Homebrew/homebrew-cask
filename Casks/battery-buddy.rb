cask "battery-buddy" do
  version "1.0.3"
  sha256 :no_check

  url "https://batterybuddy.app/releases/Battery%20Buddy.zip"
  name "Battery Buddy"
  desc "Replacement of the default battery indicator in the menu bar"
  homepage "https://batterybuddy.app/"

  livecheck do
    url "https://batterybuddy.app/releases/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Battery Buddy.app"

  zap trash: [
    "~/Library/Application Scripts/com.NeilSardesai.Battery-Buddy-Helper",
    "~/Library/Containers/com.NeilSardesai.Battery-Buddy-Helper",
    "~/Library/Preferences/com.NeilSardesai.Battery-Buddy.plist",
  ]
end
