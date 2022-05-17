cask "smartsynchronize" do
  version "4.3.0"

  if Hardware::CPU.intel?
    arch = "x86_64"
    sha256 "22041d221c32b23e6be76a089e72ddc7fe1f52fac190fac949f29fff7b05d498"
  else
    arch = "aarch64"
    sha256 "e52c0b57bd4c31023cb0dc84f0f45369e27ee8b96fc6b20768b2f8831469db9d"
  end

  url "https://www.syntevo.com/downloads/smartsynchronize/smartsynchronize-#{arch}-#{version.dots_to_underscores}.dmg"
  name "SmartSynchronize"
  desc "File and directory compare tool"
  homepage "https://www.syntevo.com/smartsynchronize/"

  livecheck do
    url "https://www.syntevo.com/smartsynchronize/download/"
    strategy :page_match do |page|
      v = page[/smartsynchronize[._-]#{arch}[._-]v?(\d+(?:_\d+)+)\.dmg/i, 1]
      next if v.blank?

      v.tr("_", ".")
    end
  end

  depends_on macos: ">= :el_capitan"

  app "SmartSynchronize.app"
  binary "#{appdir}/SmartSynchronize.app/Contents/MacOS/SmartSynchronize"
end
