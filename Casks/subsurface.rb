cask "subsurface" do
  version "4.9.9"
  sha256 "4c84335dada4bef73e63303b04ed2de83a9c52d40c5513fb1f5b3ac522ab23a0"

  url "https://subsurface-divelog.org/downloads/Subsurface-#{version}.dmg"
  appcast "https://subsurface-divelog.org/download/"
  name "Subsurface"
  homepage "https://subsurface-divelog.org/"

  app "Subsurface.app"
end
