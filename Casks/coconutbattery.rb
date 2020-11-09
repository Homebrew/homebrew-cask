cask "coconutbattery" do
  if MacOS.version <= :yosemite
    version "3.6.4"
    sha256 "8e289fb4a75cb117fc1d7861020c9ab2384b09dfd18f066c7fadfc9d42c3ac56"
    url "https://www.coconut-flavour.com/downloads/coconutBattery_#{version}.zip"
  else
    version "3.9.1,6c26a706"
    sha256 "825ba09d8ca7dee2aaa4dceee696ca7c46b983810cb4488ece8d3f8445b6f93b"
    url "https://www.coconut-flavour.com/downloads/coconutBattery_#{version.before_comma.no_dots}_#{version.after_comma}.zip"
    appcast "https://coconut-flavour.com/updates/coconutBattery.xml"
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
