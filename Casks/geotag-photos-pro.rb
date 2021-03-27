cask "geotag-photos-pro" do
  version "1.7.0"
  sha256 "88c15dc4c2bacb5c553ce9bf8795297a12028c81bbbc954f047b459397fff6b2"

  url "https://github.com/tappytaps/geotag-desktop-app/releases/download/v#{version}/Geotag-Photos-Pro-2-#{version}.dmg",
      verified: "github.com/tappytaps/geotag-desktop-app/"
  name "Geotag Photos Pro"
  homepage "https://www.geotagphotos.net/"

  app "Geotag Photos Pro 2.app"
end
