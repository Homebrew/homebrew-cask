cask "futubull" do
  version "11.2.818,202103091048"
  sha256 "4005cef8af1bc206a6280d29d8d2ec80d3d589b6e95429ad64c586bd7ebc6040"

  url "https://softwarefile.futunn.com/FTNNForMac_#{version.before_comma}_#{version.after_comma}_Website.dmg"
  appcast "https://www.futunn.com/download/mac?lang=en-US"
  name "Futubull"
  name "FutuNiuniu"
  desc "Trading application"
  homepage "https://www.futunn.com/"

  # Renamed for consistency: app name is different in the Finder and in a shell.
  app "FutuNiuniu.app", target: "Futubull.app"
end
