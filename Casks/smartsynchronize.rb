cask "smartsynchronize" do
  version "4.1.1.1"
  sha256 "a0a9d1ae9460e7f6c6ce4904534728914f607176fd416c95601fe0a3426d9e7e"

  url "https://www.syntevo.com/downloads/smartsynchronize/smartsynchronize-macosx-#{version.dots_to_underscores}.dmg"
  appcast "https://www.syntevo.com/smartsynchronize/changelog.txt",
          must_contain: version.chomp(".0")
  name "SmartSynchronize"
  homepage "https://www.syntevo.com/smartsynchronize/"

  app "SmartSynchronize.app"
  binary "#{appdir}/SmartSynchronize.app/Contents/MacOS/SmartSynchronize"
end
