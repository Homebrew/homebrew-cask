cask "moom" do
  version "3.2.22,3323"
  sha256 "b62865325a02c8a5ed6ee8b0ed257e06ddcd5b08451c91aa79273f06af267187"

  url "https://manytricks.com/download/_do_not_hotlink_/moom#{version.before_comma.no_dots}.dmg"
  name "Moom"
  desc "Utility to move and zoom windows—on one display"
  homepage "https://manytricks.com/moom/"

  livecheck do
    url "https://manytricks.com/moom/appcast/"
    strategy :sparkle
  end

  auto_updates true

  app "Moom.app"

  zap trash: [
    "~/Library/Preferences/com.manytricks.Moom.plist",
    "~/Library/Application Support/Many Tricks",
  ]
end
