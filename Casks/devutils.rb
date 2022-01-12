cask "devutils" do
  version "1.12.0,99"
  sha256 "00fd3320528d32324dbb03b08ee795ed5f1e254a5d54ef09859c9e45cea7c1e7"

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
