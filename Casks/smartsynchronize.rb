cask "smartsynchronize" do
  version "4.2.0"
  sha256 "28d1255b9b4479ded49e3d5b4100db70c65e8a5b1ddaab1f7c35c07cb6a4c743"

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
