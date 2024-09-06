cask "leech" do
  version "3.2"
  sha256 "333b57aae1a7406a7b44f6d57765ffd0b85df2a7283ea5936c2b09ec5c2c0339"

  url "https://manytricks.com/download/_do_not_hotlink_/leech#{version.no_dots.ljust(3, "0")}.dmg"
  name "Leech"
  desc "Lightweight download manager"
  homepage "https://manytricks.com/leech/"

  livecheck do
    url "https://manytricks.com/leech/appcast/"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Leech.app"

  zap trash: [
    "~/Library/Application Scripts/METK467GW2.com.manytricks.Leech.Shared",
    "~/Library/Application Support/Leech",
    "~/Library/Group Containers/METK467GW2.com.manytricks.Leech.Shared",
    "~/Library/Preferences/com.manytricks.Leech.plist",
  ]
end
