cask "northernspysoftware-colorpicker" do
  version "1.7"
  sha256 "cb5aac90b50b5541bd3e9e17e365a23ce59031839de3a6c0c92901d40ee87db1"

  url "http://www.northernspysoftware.com/download/ColorPicker_#{version}.dmg"
  name "ColorPicker"
  desc "Utility to use the Apple colour picker anywhere"
  homepage "http://www.northernspysoftware.com/software/colorpicker"

  disable! date: "2024-05-14", because: :no_longer_available

  app "ColorPicker.app"

  zap trash: [
    "~/Library/Caches/com.NorthernSpy.ColorPicker",
    "~/Library/Preferences/com.NorthernSpy.ColorPicker.plist",
  ]
end
