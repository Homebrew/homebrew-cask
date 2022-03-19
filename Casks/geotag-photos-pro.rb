cask "geotag-photos-pro" do
  version "1.9.3"
  sha256 "3b5d1235b291f5237b1b8572b3f90266821320ec95e3256ab3b2d372e5fba277"

  url "https://github.com/tappytaps/geotag-desktop-app/releases/download/v#{version}/Geotag-Photos-Pro-2-#{version}.dmg",
      verified: "github.com/tappytaps/geotag-desktop-app/"
  name "Geotag Photos Pro"
  desc "Geotagging software"
  homepage "https://www.geotagphotos.net/"

  app "Geotag Photos Pro 2.app"
end
