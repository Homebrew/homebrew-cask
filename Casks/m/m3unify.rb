cask "m3unify" do
  version "3.0.0"
  sha256 "093714e18978c2fb8c5a2704ba66932d99dbc8137bed2802cdb677842e1f9c0b"

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

  zap trash: [
    "~/Library/Caches/com.dougscripts.M3Unify",
    "~/Library/HTTPStorages/com.dougscripts.M3Unify",
    "~/Library/Preferences/com.dougscripts.M3Unify.plist",
  ]
end
