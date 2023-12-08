cask "flirc" do
  version "3.27.9"
  sha256 "db40809138316acf0ccca444109cf8919525ee588df9bbe783ab36de03edabb3"

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
