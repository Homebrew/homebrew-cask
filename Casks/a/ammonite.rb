cask "ammonite" do
  version "1.28"
  sha256 "602c1acdd83b57dbb45ee87bcf7da61f177bdb2ddd8a63275bddb5ef69c299c4"

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
