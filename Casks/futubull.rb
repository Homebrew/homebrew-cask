cask "futubull" do
  version "11.0.762,202101151723"
  sha256 "aefd294a93d8d7ef91c261a9be31e2ca5b570f5592c0aef81a5f39bb40e210f3"

  url "https://softwarefile.futunn.com/FTNNForMac_#{version.before_comma}_#{version.after_comma}_Website.dmg"
  appcast "https://www.futunn.com/download/mac?lang=en-US"
  name "Futubull"
  name "FutuNiuniu"
  desc "Trading application"
  homepage "https://www.futunn.com/"

  # Renamed for consistency: app name is different in the Finder and in a shell.
  app "FutuNiuniu.app", target: "Futubull.app"
end
