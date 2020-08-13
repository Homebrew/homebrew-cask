cask "geotag-photos-pro" do
  version "1.6.3"
  sha256 "78b0d269c11c4e65b42108197ce97dd875247ea0f4c7d86aeec6f6d3d5acad0b"

  # github.com/tappytaps/geotag-desktop-app/ was verified as official when first introduced to the cask
  url "https://github.com/tappytaps/geotag-desktop-app/releases/download/v#{version}/Geotag-Photos-Pro-2-#{version}.dmg"
  appcast "https://github.com/tappytaps/geotag-desktop-app/releases.atom"
  name "Geotag Photos Pro"
  homepage "https://www.geotagphotos.net/"

  app "Geotag Photos Pro 2.app"
end
