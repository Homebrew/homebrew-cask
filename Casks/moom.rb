cask "moom" do
  version "3.2.23,3329"
  sha256 "a78032968be1ce58409f320065b23ccdbb48f621cb4b50e3abe80bcc9491e871"

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
