cask "moom" do
  version "3.2.24,3341"
  sha256 "f65b4a70ed4de66374c91d0a1a6f00adbd7089c21a92c354fd8c485422cc20df"

  url "https://manytricks.com/download/_do_not_hotlink_/moom#{version.csv.first.no_dots}.dmg"
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
