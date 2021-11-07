cask "smartsynchronize" do
  version "4.2.1"
  sha256 "e4cf1c0b335f23b1dab9c7f8e1be802f6bac5a160ddbc7b57f4cf3605e44fabd"

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
