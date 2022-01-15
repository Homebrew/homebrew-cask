cask "syncsettings" do
  version "1.2.4,6008"
  sha256 "09e6d8b65fce1a21faa3933bb07f61a9a9b0386da2bb61f0688c1f04f28a9978"

  url "https://neededapps.com/appcasts/syncsettings/versions/SS-#{version.csv.first}.zip"
  name "SyncSettings"
  desc "Sync and save settings of your apps"
  homepage "https://neededapps.com/syncsettings/"

  livecheck do
    url "https://neededapps.com/appcasts/syncsettings/changelog.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :high_sierra"

  app "SyncSettings.app"

  zap trash: [
    "~/Library/Application Support/SyncSettings",
    "~/Library/Preferences/com.jeremyvizzini.syncsettings.macos.plist",
  ]
end
