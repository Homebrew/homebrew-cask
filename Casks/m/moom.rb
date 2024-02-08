cask "moom" do
  version "3.2.25"
  sha256 "93e69ccc7f69892aae30a6422fcc0bab386a562e7e14f8cad18a8ceb15650498"

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
