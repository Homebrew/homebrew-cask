cask "smartsynchronize" do
  arch = Hardware::CPU.intel? ? "x86_64" : "aarch64"

  version "4.3.1"

  if Hardware::CPU.intel?
    sha256 "a35c74d2f0965a4471888bde7e962569f85bd62a6707dd6ab0dff4e99265a287"
  else
    sha256 "27aa45524cfc673e566d2a2eb7ba382cfb436d13a08e69a7f35466cffe2b2857"
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
