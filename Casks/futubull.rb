cask "futubull" do
  version "10.13.738,202012151016"
  sha256 "a329ad46b20b6d571cac32f8e42b3f0841c6baf0200b422a341bb0fd59f7ece8"

  url "https://softwarefile.futunn.com/FTNNForMac_#{version.before_comma}_#{version.after_comma}_Website.dmg"
  appcast "https://www.futunn.com/download/mac?lang=en-US"
  name "Futubull"
  name "FutuNiuniu"
  desc "Trading application"
  homepage "https://www.futunn.com/"

  # Renamed for consistency: app name is different in the Finder and in a shell.
  app "FutuNiuniu.app", target: "Futubull.app"
end
