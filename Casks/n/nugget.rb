cask "nugget" do
  version "7.3"
  sha256 "ae0f43b70e7a76cbbd8a93052143dd48f8be42f33aad983fa630c0a92350077c"

  url "https://github.com/leminlimez/Nugget/releases/download/v#{version}/Nugget_macOS_arm.dmg"
  name "Nugget"
  desc "Customise your iOS device with animated wallpapers, disable daemons and more"
  homepage "https://github.com/leminlimez/Nugget"

  depends_on arch: :arm64
  depends_on macos: ">= :big_sur"

  app "Nugget.app"

  zap trash: [
    "~/Library/Preferences/com.nugget.MGA Data.plist",
    "~/Library/Preferences/com.nugget.Nugget.plist",
    "~/Library/Preferences/com.nugget.settings.plist",
  ]
end
