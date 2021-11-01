cask "ammonite" do
  version "1.22.1,525"
  sha256 "9a6745f6c7865956529999c3981404d66f44253901e5f1d4d801d970998bd813"

  url "https://www.soma-zone.com/download/files/Ammonite-#{version.before_comma}.tar.bz2"
  name "Ammonite"
  desc "Tag visualizer and search utility"
  homepage "https://www.soma-zone.com/Ammonite/"

  livecheck do
    url "https://www.soma-zone.com/Ammonite/a/appcast.xml"
    strategy :sparkle
  end

  app "Ammonite.app"
end
