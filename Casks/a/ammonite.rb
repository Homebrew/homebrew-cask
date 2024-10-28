cask "ammonite" do
  version "1.28.1"
  sha256 "7cf2390ec4649b5b19bfaf88c5d9d4ae9377dcb3b049c64d7a462ec8c7fd3fce"

  url "https://www.soma-zone.com/download/files/Ammonite-#{version}.tar.xz"
  name "Ammonite"
  desc "Tag visualiser and search utility"
  homepage "https://www.soma-zone.com/Ammonite/"

  livecheck do
    url "https://www.soma-zone.com/Ammonite/a/appcast.xml"
    strategy :sparkle, &:short_version
  end

  app "Ammonite.app"

  zap trash: [
    "~/Library/Logs/Ammonite",
    "~/Library/Preferences/com.soma-zone.Ammonite.plist",
  ]
end
