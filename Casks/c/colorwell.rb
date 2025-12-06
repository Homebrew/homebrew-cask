cask "colorwell" do
  version "8.1"
  sha256 :no_check

  url "https://sweetpproductions.com/products/colorwell/ColorWell.dmg"
  name "ColorWell"
  desc "Colour picker and colour palette generator"
  homepage "https://colorwell.sweetpproductions.com/"

  livecheck do
    url "https://sweetpproductions.com/products/colorwell/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :ventura"

  app "ColorWell.app"

  zap trash: [
    "~/Library/Application Scripts/com.sweetpproductions.ColorWell",
    "~/Library/Containers/com.sweetpproductions.ColorWell",
  ]
end
