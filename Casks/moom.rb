cask "moom" do
  version "3.2.18"
  sha256 "1f6e31470c1cf7de6f13b4b9a16a5e716eedc249fc69f01a43dff5aeac3d5df4"

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
