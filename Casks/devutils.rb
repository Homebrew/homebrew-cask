cask "devutils" do
  version "1.15.0,132"
  sha256 "364231fe0bc2fff59608c1aeae1cfc952a86890ad3f8c4128ca400b39ed73417"

  url "https://devutils.app/archives/DevUtils-#{version.csv.first}.dmg"
  name "DevUtils"
  desc "Offline toolbox for developers"
  homepage "https://devutils.app/"

  livecheck do
    url "https://devutils.app/archives/appcast.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :el_capitan"

  app "DevUtils.app"

  zap trash: [
    "~/Library/Caches/DevUtils",
    "~/Library/Caches/tonyapp.devutils",
    "~/Library/Preferences/tonyapp.devutils",
  ]
end
