cask "moom" do
  version "3.2.19"
  sha256 "6aab4a0a186d119835f24f8899853b1b89c4b914f6a0379946706a113babcd14"

  url "https://manytricks.com/download/_do_not_hotlink_/moom#{version.no_dots}.dmg"
  appcast "https://manytricks.com/moom/appcast"
  name "Moom"
  desc "Utility to move and zoom windows—on one display"
  homepage "https://manytricks.com/moom/"

  auto_updates true

  app "Moom.app"

  zap trash: [
    "~/Library/Preferences/com.manytricks.Moom.plist",
    "~/Library/Application Support/Many Tricks",
  ]
end
