cask "flirc" do
  version "3.27.13"
  sha256 "8a7c1dc1e901a0153898299435065381926ac0d3fd689822d18cdb5610e65142"

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
