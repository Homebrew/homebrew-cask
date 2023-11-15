cask "ammonite" do
  version "1.25"
  sha256 "3cbb56695ad66be04f7220ce2feeeaccdab40e6fb44e303c52097799f90e8e89"

  url "https://www.soma-zone.com/download/files/Ammonite-#{version}.tar.xz"
  name "Ammonite"
  desc "Tag visualizer and search utility"
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
