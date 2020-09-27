cask "ammonite" do
  version "1.20.1"
  sha256 "7727b45c4cd6dd624e5ca834fe03d17b27233721565f8ff1c6b703cac28770a7"

  url "https://www.soma-zone.com/download/files/Ammonite-#{version}.tar.bz2"
  appcast "https://www.soma-zone.com/Ammonite/a/appcast_update.xml"
  name "Ammonite"
  homepage "https://www.soma-zone.com/Ammonite/"

  app "Ammonite.app"
end
