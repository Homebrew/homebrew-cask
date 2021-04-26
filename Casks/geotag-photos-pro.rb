cask "geotag-photos-pro" do
  version "1.8.1"
  sha256 "bee962dbbb53c50fe7d0442d4d571168a47808fc15d619c34a1ea6af01253b0d"

  url "https://github.com/tappytaps/geotag-desktop-app/releases/download/v#{version}/Geotag-Photos-Pro-2-#{version}.dmg",
      verified: "github.com/tappytaps/geotag-desktop-app/"
  name "Geotag Photos Pro"
  desc "Geotagging software"
  homepage "https://www.geotagphotos.net/"

  app "Geotag Photos Pro 2.app"
end
