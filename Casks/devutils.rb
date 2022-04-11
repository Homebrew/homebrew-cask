cask "devutils" do
  version "1.14.0,127"
  sha256 "7d14a8ac75ca8ed349ece7f75c86f3af8c64e7042b197330ac29f4d80641e11d"

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
