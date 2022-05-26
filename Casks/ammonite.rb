cask "ammonite" do
  version "1.23.1,589"
  sha256 "830fba369f3fece384b25bf3eab335e052f23fc6c4aec58a2f2febc79db6480a"

  url "https://www.soma-zone.com/download/files/Ammonite-#{version.csv.first}.tar.xz"
  name "Ammonite"
  desc "Tag visualizer and search utility"
  homepage "https://www.soma-zone.com/Ammonite/"

  livecheck do
    url "https://www.soma-zone.com/Ammonite/a/appcast.xml"
    strategy :sparkle
  end

  app "Ammonite.app"
end
