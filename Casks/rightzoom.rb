cask "rightzoom" do
  version "2.3"
  sha256 "026b18288814a6c548fe18730b4959b8e968ffb2eef31517796e72f7b988242c"

  url "https://www.blazingtools.com/mac/RightZoom#{version.no_dots}.zip"
  appcast "https://www.blazingtools.com/right_zoom_mac.html"
  name "Right Zoom"
  homepage "https://www.blazingtools.com/right_zoom_mac.html"

  app "RightZoom.app"
end
