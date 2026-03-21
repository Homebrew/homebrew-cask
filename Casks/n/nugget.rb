cask "nugget" do
  arch arm: "arm64", intel: "x86_64"

  version "7.3"
  sha256 arm:   "ae0f43b70e7a76cbbd8a93052143dd48f8be42f33aad983fa630c0a92350077c",
         intel: "5bbe1951f22cd0c3f803fb8696555c005102811ef06116799d9d5795bbf4ec05"

  url arm:   "https://github.com/leminlimez/Nugget/releases/download/v#{version}/Nugget_macOS_arm.dmg",
      intel: "https://github.com/leminlimez/Nugget/releases/download/v#{version}/Nugget_macOS_intel.dmg"
  name "Nugget"
  desc "Customise your iOS device with animated wallpapers, disable daemons and more"
  homepage "https://github.com/leminlimez/Nugget"

  depends_on macos: ">= :big_sur"

  app "Nugget.app"

  zap trash: [
    "~/Library/Preferences/com.nugget.MGA Data.plist",
    "~/Library/Preferences/com.nugget.Nugget.plist",
    "~/Library/Preferences/com.nugget.settings.plist",
  ]
end
