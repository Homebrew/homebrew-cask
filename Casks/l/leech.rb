cask "leech" do
  version "3.2.1"
  sha256 "91616cf08e302e2c5226f15dede92e2f308aac57a575ef9fbe719ed49a883e99"

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
