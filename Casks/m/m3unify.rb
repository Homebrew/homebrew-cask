cask "m3unify" do
  version "3.0.1"
  sha256 "e18f39924d50c1369858d78ddc6a11d6d375b32062b3328fe30c1d9eb9ec16e1"

  url "https://dougscripts.com/itunes/scrx/M3Unify_#{version}.dmg"
  name "M3Unify"
  desc "File exporter and M3U playlist creator"
  homepage "https://dougscripts.com/apps/m3unifyapp.php"

  livecheck do
    url "https://dougscripts.com/itunes/itinfo/m3unify_appcast.xml"
    strategy :sparkle, &:short_version
  end

  depends_on macos: :monterey

  app "M3Unify.app"

  uninstall quit: "com.dougscripts.M3Unify"

  zap trash: [
    "~/Library/Caches/com.dougscripts.M3Unify",
    "~/Library/HTTPStorages/com.dougscripts.M3Unify",
    "~/Library/Preferences/com.dougscripts.M3Unify.plist",
  ]
end
