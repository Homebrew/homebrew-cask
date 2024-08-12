cask "ammonite" do
  version "1.27"
  sha256 "a9cc57b018af1aee1d6303d74815cfa5a41b964bb8f11e610fbbdc4d3d1b4c0a"

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
