cask "northernspysoftware-colorpicker" do
  version "1.7"
  sha256 "cb5aac90b50b5541bd3e9e17e365a23ce59031839de3a6c0c92901d40ee87db1"

  url "http://www.northernspysoftware.com/download/ColorPicker_#{version}.dmg"
  name "ColorPicker"
  desc "Utility to use the Apple color picker anywhere"
  homepage "http://www.northernspysoftware.com/software/colorpicker"

  livecheck do
    url :homepage
    regex(/ColorPicker_(\d+(?:\.\d+)*)\.dmg/i)
  end

  app "ColorPicker.app"

  zap trash: [
    "~/Library/Caches/com.NorthernSpy.ColorPicker",
    "~/Library/Preferences/com.NorthernSpy.ColorPicker.plist",
  ]
end
