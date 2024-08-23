cask "moom" do
  version "4.0"
  sha256 "e3ae549b1f2916e7c5c2fc50c9141ca180fa9040e1bb9b219a7114c3556fca9e"

  url "https://manytricks.com/download/_do_not_hotlink_/moom#{version.no_dots.ljust(3, "0")}.dmg"
  name "Moom"
  desc "Utility to move and zoom windows—on one display"
  homepage "https://manytricks.com/moom/"

  livecheck do
    url "https://manytricks.com/moom/appcast/"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Moom.app"

  zap trash: [
    "~/Library/Application Support/Many Tricks",
    "~/Library/Preferences/com.manytricks.Moom.plist",
  ]
end
