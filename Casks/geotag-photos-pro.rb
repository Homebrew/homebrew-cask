cask "geotag-photos-pro" do
  version "1.9.5"
  sha256 "441ec244a567238abbf582026cbbed6932683bacf4239f01df5fcd239f6e5c6a"

  url "https://github.com/tappytaps/geotag-desktop-app/releases/download/v#{version}/Geotag-Photos-Pro-2-#{version}.dmg",
      verified: "github.com/tappytaps/geotag-desktop-app/"
  name "Geotag Photos Pro"
  desc "Geotagging software"
  homepage "https://www.geotagphotos.net/"

  app "Geotag Photos Pro 2.app"
end
