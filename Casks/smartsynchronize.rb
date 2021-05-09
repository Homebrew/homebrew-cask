cask "smartsynchronize" do
  version "32"
  sha256 "a565e6b42077c415dd0e7a97485330bf9f087634de6be09e2e10c9803a8d5798"

  url "https://www.syntevo.com/downloads/smartsynchronize/smartsynchronize-macos-#{version.dots_to_underscores}.dmg"
  name "SmartSynchronize"
  desc "File and directory compare tool"
  homepage "https://www.syntevo.com/smartsynchronize/"

  livecheck do
    url "https://www.syntevo.com/smartsynchronize/download/"
    strategy :page_match do |page|
      v = page[%r{href=.*?/smartsynchronize-macos-(\d+(?:_\d+)*)\.dmg}i, 1]
      v.tr("_", ".")
    end
  end

  depends_on macos: ">= :el_capitan"

  app "SmartSynchronize.app"
  binary "#{appdir}/SmartSynchronize.app/Contents/MacOS/SmartSynchronize"
end
