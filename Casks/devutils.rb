cask "devutils" do
  version "1.13.0,108"
  sha256 "3978c3bad7d83c7c789cfc1ddddbef41ac205add54c928fcaceae2ef7e2cba7f"

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
