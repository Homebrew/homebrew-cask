cask "brightness" do
  version "1.1.2"
  sha256 "1bb6e6a993ee5c64ba27c28f96160ed64c5136835f73f2f7fe9f553b90f4a90c"

  url "http://bergdesign.com/resources/Brightness/Brightness_#{version}.dmg"
  name "Brightness"
  desc "Menu bar item for adjusting the brightness of the display and backlit keyboard"
  homepage "http://bergdesign.com/brightness/"

  livecheck do
    url "http://bergdesign.com/brightness/"
    regex(%r{href=.*?/Brightness_(\d+(?:\.\d+)+)\.dmg}i)
  end

  app "Brightness.app"
end
