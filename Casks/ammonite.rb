cask "ammonite" do
  version "1.22.2,532"
  sha256 "53d3d86478d8f33e688ca069d5f078ea68b84d9fa1d2fc4bb20d9796e84ffbec"

  url "https://www.soma-zone.com/download/files/Ammonite-#{version.csv.first}.tar.bz2"
  name "Ammonite"
  desc "Tag visualizer and search utility"
  homepage "https://www.soma-zone.com/Ammonite/"

  livecheck do
    url "https://www.soma-zone.com/Ammonite/a/appcast.xml"
    strategy :sparkle
  end

  app "Ammonite.app"
end
