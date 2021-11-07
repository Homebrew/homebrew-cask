cask "rightzoom" do
  version "2.3"
  sha256 "60ad9b6a54dc1191159dc4ac557d095a38780afec4f7d3067093da98037fe476"

  url "https://www.blazingtools.com/mac/RightZoom#{version.no_dots}.zip"
  name "Right Zoom"
  homepage "https://www.blazingtools.com/right_zoom_mac.html"

  livecheck do
    url "https://www.blazingtools.com/right_zoom_mac.html"
    strategy :page_match
    regex(/Right\s*Zoom\s*v\.\s*(\d+(?:\.\d+)*)/i)
  end

  app "RightZoom.app"
end
