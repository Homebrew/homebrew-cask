cask "moom" do
  version "3.2.21,3317"
  sha256 "dfe05f40f64f090c87dd5ad4cbb8dc26b97fb2547e5b34b2ebdcb6864f87cf4d"

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
