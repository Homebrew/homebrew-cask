cask "smartsynchronize" do
  version "4.3.0"
  sha256 "22041d221c32b23e6be76a089e72ddc7fe1f52fac190fac949f29fff7b05d498"

  url "https://www.syntevo.com/downloads/smartsynchronize/smartsynchronize-x86_64-#{version.dots_to_underscores}.dmg"
  name "SmartSynchronize"
  desc "File and directory compare tool"
  homepage "https://www.syntevo.com/smartsynchronize/"

  livecheck do
    url "https://www.syntevo.com/smartsynchronize/download/"
    strategy :page_match do |page|
      v = page[/smartsynchronize[._-]x86[._-]64[._-]v?(\d+(?:_\d+)+)\.dmg/i, 1]
      next if v.blank?

      v.tr("_", ".")
    end
  end

  depends_on macos: ">= :el_capitan"

  app "SmartSynchronize.app"
  binary "#{appdir}/SmartSynchronize.app/Contents/MacOS/SmartSynchronize"
end
