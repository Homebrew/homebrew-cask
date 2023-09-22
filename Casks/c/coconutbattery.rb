cask "coconutbattery" do
  version "3.9.14,88BE77F5"
  sha256 "d1482b4e3bcf0df2ff9c5e9a3516d981cd4cc1d8abdde3d802364710cb98b359"

  url "https://www.coconut-flavour.com/downloads/coconutBattery_#{version.csv.first.no_dots}_#{version.csv.second}.zip"
  name "coconutBattery"
  desc "Tool to show live information about the batteries in various devices"
  homepage "https://www.coconut-flavour.com/coconutbattery/"

  livecheck do
    url "https://coconut-flavour.com/updates/coconutBattery.xml"
    strategy :sparkle do |item|
      "#{item.version},#{item.url[/_\d+_(.*?)\./i, 1]}"
    end
  end

  auto_updates true
  depends_on macos: ">= :sierra"

  app "coconutBattery.app"

  uninstall launchctl: "com.coconut-flavour.coconutBattery-Menu",
            quit:      "com.coconut-flavour.coconutBattery-Menu"

  zap trash: [
    "~/Library/Application Support/coconutBattery",
    "~/Library/Caches/com.coconut-flavour.coconutBattery*",
    "~/Library/Group Containers/*.coconut-flavour.coconutBattery",
    "~/Library/Preferences/com.coconut-flavour.coconutBattery-Menu.plist",
    "~/Library/Preferences/com.coconut-flavour.coconutBattery.plist",
    "~/Library/Saved Application State/com.coconut-flavour.coconutBattery.savedState",
  ]
end
