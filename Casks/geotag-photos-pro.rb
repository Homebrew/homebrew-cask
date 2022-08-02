cask "geotag-photos-pro" do
  version "1.9.4"
  sha256 "770879155c1ced6cfe8d8d0589200697e53ab7e5edba8353f8829fc7de098b83"

  url "https://github.com/tappytaps/geotag-desktop-app/releases/download/v#{version}/Geotag-Photos-Pro-2-#{version}.dmg",
      verified: "github.com/tappytaps/geotag-desktop-app/"
  name "Geotag Photos Pro"
  desc "Geotagging software"
  homepage "https://www.geotagphotos.net/"

  app "Geotag Photos Pro 2.app"
end
