cask "geotag-photos-pro" do
  version "1.8.2"
  sha256 "d9c89e4562e310749ebc7b9d58dcb4d474a652b9df5dc63781661a24339b54ec"

  url "https://github.com/tappytaps/geotag-desktop-app/releases/download/v#{version}/Geotag-Photos-Pro-2-#{version}.dmg",
      verified: "github.com/tappytaps/geotag-desktop-app/"
  name "Geotag Photos Pro"
  desc "Geotagging software"
  homepage "https://www.geotagphotos.net/"

  app "Geotag Photos Pro 2.app"
end
