cask "rightzoom" do
  version "3.0"
  sha256 :no_check

  url "https://blazingtools.com/mac/RightZoom.zip"
  name "Right Zoom"
  desc "Changes the way the full screen button acts"
  homepage "https://blazingtools.com/right_zoom_mac.html"

  disable! date: "2024-09-30", because: :no_longer_available

  app "RightZoom.app"

  # No zap stanza required
end
