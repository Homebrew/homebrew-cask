cask "futubull" do
  version "11.1.778,202102011105"
  sha256 "0baa3d100cfdc4e447e758e4756f784b7ae003c29b81f7efd5d3d1db95ea18fc"

  url "https://softwarefile.futunn.com/FTNNForMac_#{version.before_comma}_#{version.after_comma}_Website.dmg"
  appcast "https://www.futunn.com/download/mac?lang=en-US"
  name "Futubull"
  name "FutuNiuniu"
  desc "Trading application"
  homepage "https://www.futunn.com/"

  # Renamed for consistency: app name is different in the Finder and in a shell.
  app "FutuNiuniu.app", target: "Futubull.app"
end
