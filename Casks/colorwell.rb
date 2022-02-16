cask "colorwell" do
  version "7.3.4"
  sha256 :no_check

  url "https://sweetpproductions.com/products/colorwell/ColorWell.dmg"
  name "ColorWell"
  desc "Color picker and color palette generator"
  homepage "https://colorwell.sweetpproductions.com/"

  livecheck do
    url "https://sweetpproductions.com/products/colorwell/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :el_capitan"

  app "ColorWell.app"

  zap trash: [
    "~/Library/Application Scripts/com.sweetpproductions.ColorWell",
    "~/Library/Containers/com.sweetpproductions.ColorWell",
  ]
end
