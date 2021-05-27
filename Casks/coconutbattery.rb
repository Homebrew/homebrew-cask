cask "coconutbattery" do
  if MacOS.version <= :yosemite
    version "3.6.4"
    sha256 "8e289fb4a75cb117fc1d7861020c9ab2384b09dfd18f066c7fadfc9d42c3ac56"

    url "https://www.coconut-flavour.com/downloads/coconutBattery_#{version}.zip"
  else
    version "3.9.5,56a00dbe"
    sha256 "e58fc5930281ecaa2888a43290e21f2e34b7f36a3e8785e85fd68c643579c093"

    url "https://www.coconut-flavour.com/downloads/coconutBattery_#{version.before_comma.no_dots}_#{version.after_comma}.zip"

    livecheck do
      url "https://coconut-flavour.com/updates/coconutBattery.xml"
      strategy :sparkle do |item|
        "#{item.version},#{item.url[/_(?:\d+)_(.*?)\./i, 1]}"
      end
    end
  end

  name "coconutBattery"
  desc "Tool to show live information about the batteries in various devices"
  homepage "https://www.coconut-flavour.com/coconutbattery/"

  auto_updates true

  app "coconutBattery.app"

  uninstall launchctl: "com.coconut-flavour.coconutBattery-Menu",
            quit:      "com.coconut-flavour.coconutBattery-Menu"

  zap trash: [
    "~/Library/Application Support/coconutBattery",
    "~/Library/Caches/com.coconut-flavour.coconutBattery*",
    "~/Library/Group Containers/*.coconut-flavour.coconutBattery",
    "~/Library/Preferences/com.coconut-flavour.coconutBattery.plist",
    "~/Library/Preferences/com.coconut-flavour.coconutBattery-Menu.plist",
    "~/Library/Saved Application State/com.coconut-flavour.coconutBattery.savedState",
  ]
end
