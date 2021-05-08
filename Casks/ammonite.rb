cask "ammonite" do
  version "1.22,523"
  sha256 "967a90c455a4ad05ac674d9e26f9f57bdaa09bd3079e3d2b47f7db30af9c3184"

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
