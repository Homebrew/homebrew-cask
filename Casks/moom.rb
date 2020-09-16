cask "moom" do
  version "3.2.17"
  sha256 "c6bb33f478721dade0531ebf5fd0c9cd63d8b6d48b34afdc849d6c94a201aebd"

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
