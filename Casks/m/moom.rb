cask "moom" do
  version "3.2.26"
  sha256 "a620cfd10d00e7ab5e4cedf789f89332a8c5c1efde4064bbdbbe553147ede9e4"

  url "https://manytricks.com/download/_do_not_hotlink_/moom#{version.no_dots}.dmg"
  name "Moom"
  desc "Utility to move and zoom windows—on one display"
  homepage "https://manytricks.com/moom/"

  livecheck do
    url "https://manytricks.com/moom/appcast/"
    strategy :sparkle, &:short_version
  end

  auto_updates true

  app "Moom.app"

  zap trash: [
    "~/Library/Application Support/Many Tricks",
    "~/Library/Preferences/com.manytricks.Moom.plist",
  ]
end
