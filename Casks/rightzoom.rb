cask "rightzoom" do
  version "3.0"
  sha256 "60ad9b6a54dc1191159dc4ac557d095a38780afec4f7d3067093da98037fe476"

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
