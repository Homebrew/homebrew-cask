cask "gpxsee" do
  version "7.32"
  sha256 "73d699c0423420775008acbbf7d2811e52f46ace2c61aeb6d777c020ec149470"

  # sourceforge.net/gpxsee/Mac%20OS%20X/ was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/gpxsee/Mac%20OS%20X/GPXSee-#{version}.dmg"
  appcast "https://sourceforge.net/projects/gpxsee/rss?path=/Mac%20OS%20X"
  name "GPXSee"
  homepage "https://www.gpxsee.org/"

  app "GPXSee.app"
end
