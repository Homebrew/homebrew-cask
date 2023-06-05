cask "ammonite" do
  version "1.24"
  sha256 "b2fd26878ba90379b71705b1bc8dacaf107c0e61533e4c093475c943898dd745"

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
