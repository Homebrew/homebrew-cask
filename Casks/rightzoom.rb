cask "rightzoom" do
  version "3.0"
  sha256 :no_check

  url "https://www.blazingtools.com/mac/RightZoom.zip"
  name "Right Zoom"
  desc "Changes the way the full screen button acts"
  homepage "https://www.blazingtools.com/right_zoom_mac.html"

  livecheck do
    url :url
    strategy :extract_plist
  end

  app "RightZoom.app"
end
