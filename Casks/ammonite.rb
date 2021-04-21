cask "ammonite" do
  version "1.21,508"
  sha256 "bce4d85f8c93d1d9eaf6a61b82f2d94e20263f278c2dd17a96f5f85fd4af06aa"

  url "https://www.soma-zone.com/download/files/Ammonite-#{version.before_comma}.tar.bz2"
  name "Ammonite"
  homepage "https://www.soma-zone.com/Ammonite/"

  livecheck do
    url "https://www.soma-zone.com/Ammonite/a/appcast.xml"
    strategy :sparkle
  end

  app "Ammonite.app"
end
