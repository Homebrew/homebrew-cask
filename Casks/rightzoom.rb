cask "rightzoom" do
  version "3.0"
  sha256 "09a8992789c50bef29e62578b7ffb3abd9e3c20a1dab67bb6a9a202eb0a95a50"

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
