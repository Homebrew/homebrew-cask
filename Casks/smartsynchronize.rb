cask "smartsynchronize" do
  version "4.1.2"
  sha256 "d10346168f3ceab7619a0edb276799cd1a8106350c5f31c6cef1e379a16880b3"

  url "https://www.syntevo.com/downloads/smartsynchronize/smartsynchronize-macosx-#{version.dots_to_underscores}.dmg"
  name "SmartSynchronize"
  homepage "https://www.syntevo.com/smartsynchronize/"

  livecheck do
    url "https://www.syntevo.com/smartsynchronize/changelog.txt"
    strategy :page_match
    regex(/(\d+(?:\.\d+)*)\s*\(/i)
  end

  app "SmartSynchronize.app"
  binary "#{appdir}/SmartSynchronize.app/Contents/MacOS/SmartSynchronize"
end
