cask "flirc" do
  version "3.27.0"
  sha256 "4c37db37f95e70691221ce46add924a0ec308c0c8d2f5c2a178368fbef7fa264"

  url "https://flirc.com/software/flirc-usb/GUI/release/mac/Flirc-#{version}.dmg"
  name "Flirc"
  desc "IR USB receiver configurator"
  homepage "https://flirc.com/"

  livecheck do
    url "https://flirc.com/software/release/gui/mac/appcast.xml"
    strategy :sparkle
  end

  app "Flirc.app"

  zap trash: [
    "~/Library/HTTPStorages/com.flirc.Flirc",
    "~/Library/HTTPStorages/com.flirc.Flirc.binarycookies",
    "~/Library/Preferences/com.flirc.Flirc.plist",
  ]
end
