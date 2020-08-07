cask "smartsynchronize" do
  version "4.1.1"
  sha256 "3d90a85d63a879b838a3d8444010fed0624f5883ad16f9dff1c946a8cedf8b57"

  url "https://www.syntevo.com/downloads/smartsynchronize/smartsynchronize-macosx-#{version.dots_to_underscores}.dmg"
  appcast "https://www.syntevo.com/smartsynchronize/changelog.txt",
          must_contain: version.chomp(".0")
  name "SmartSynchronize"
  homepage "https://www.syntevo.com/smartsynchronize/"

  app "SmartSynchronize.app"
  binary "#{appdir}/SmartSynchronize.app/Contents/MacOS/SmartSynchronize"
end
