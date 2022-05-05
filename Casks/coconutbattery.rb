cask "coconutbattery" do
  if MacOS.version <= :yosemite
    version "3.6.4"
    sha256 "8e289fb4a75cb117fc1d7861020c9ab2384b09dfd18f066c7fadfc9d42c3ac56"

    url "https://www.coconut-flavour.com/downloads/coconutBattery_#{version}.zip"
  else
    version "3.9.7,26c13b61"
    sha256 "b55eca7fcd3a3b7636a82c42bf6d4276deddfcc94837424655c877798367aa05"

    url "https://www.coconut-flavour.com/downloads/coconutBattery_#{version.csv.first.no_dots}_#{version.csv.second}.zip"

    livecheck do
      url "https://coconut-flavour.com/updates/coconutBattery.xml"
      strategy :sparkle do |item|
        "#{item.version},#{item.url[/_\d+_(.*?)\./i, 1]}"
      end
    end
  end

  name "coconutBattery"
  desc "Tool to show live information about the batteries in various devices"
  homepage "https://www.coconut-flavour.com/coconutbattery/"

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
