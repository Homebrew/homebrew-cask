cask "coconutbattery" do
  version "4.4.0,265"
  sha256 "ac7bb9a5f02af6f1b7f3107ae3fb62268ec41e8d853a3df5ecee58bf0a51db4d"

  url "https://www.coconut-flavour.com/downloads/coconutBattery_#{version.csv.first.no_dots}_#{version.csv.second}.zip"
  name "coconutBattery"
  desc "Tool to show live information about the batteries in various devices"
  homepage "https://www.coconut-flavour.com/coconutbattery/"

  livecheck do
    url "https://coconut-flavour.com/updates/coconutBattery_#{version.csv.first.major}.xml"
    strategy :sparkle do |items|
      items.find { |item| item.channel.nil? }&.nice_version
    end
  end

  auto_updates true
  depends_on macos: :monterey

  app "coconutBattery.app"

  uninstall launchctl: "com.coconut-flavour.coconutBattery-Menu",
            quit:      "com.coconut-flavour.coconutBattery-Menu"

  zap trash: [
    "~/Library/Application Scripts/R5SC3K86L5.com.coconut-flavour.coconutBattery",
    "~/Library/Application Support/coconutBattery",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.coconut-flavour.coconutbattery.sfl*",
    "~/Library/Caches/com.coconut-flavour.coconutBattery*",
    "~/Library/Group Containers/*.coconut-flavour.coconutBattery",
    "~/Library/Preferences/com.coconut-flavour.coconutBattery-Menu.plist",
    "~/Library/Preferences/com.coconut-flavour.coconutBattery.plist",
    "~/Library/Saved Application State/com.coconut-flavour.coconutBattery.savedState",
    "~/Library/WebKit/com.coconut-flavour.coconutBattery",
  ]
end
