cask "moom" do
  version "3.2.20"
  sha256 "924a08f89379a4c5ade4b079af9e41fb91ec0297d291d123f29800d18c187def"

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
