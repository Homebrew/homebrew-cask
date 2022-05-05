cask "arrsync" do
  version "0.4.1"
  sha256 "8a254771065f90a9f9f882589eccaf7bc51ad5d0ac86faf15847381bcdbe64f0"

  url "https://downloads.sourceforge.net/arrsync/arrsync-#{version}.dmg"
  name "arRsync"
  desc "Graphical front end for the utility rsync"
  homepage "http://arrsync.sourceforge.net/"

  livecheck do
    url :homepage
    regex(/arrsync-(\d+(?:\.\d+)+)\.dmg/i)
  end

  app "arRsync.app"
end
