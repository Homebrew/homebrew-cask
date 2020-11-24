cask "subsurface" do
  version "4.9.10"
  sha256 "32d8ded0a937689183a8d915acab44330cbb26618ff12abc62be5ef42eefd9c4"

  url "https://subsurface-divelog.org/downloads/Subsurface-#{version}.dmg"
  appcast "https://subsurface-divelog.org/download/"
  name "Subsurface"
  homepage "https://subsurface-divelog.org/"

  app "Subsurface.app"
end
