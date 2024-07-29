cask "moom" do
  version "3.2.27"
  sha256 "524773fa1b108317d5ad44ebbad104edcf4c1e47d27e427475757b4383489455"

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
