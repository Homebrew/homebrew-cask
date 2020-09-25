cask "subsurface" do
  version "4.9.7"
  sha256 "09430c55f07cb1f7cb7fd13a846c6e37a560903045ac5b0a1beabeb3d8608e10"

  url "https://subsurface-divelog.org/downloads/Subsurface-#{version}.dmg"
  appcast "https://subsurface-divelog.org/download/"
  name "Subsurface"
  homepage "https://subsurface-divelog.org/"

  app "Subsurface.app"
end
