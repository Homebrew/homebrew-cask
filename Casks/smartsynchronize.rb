cask "smartsynchronize" do
  arch arm: "aarch64", intel: "x86_64"

  version "4.4.4"
  sha256 arm:   "c42ab1fec6adeda1d62d9c2324d575d529ca2dc2448b34c28f6c5b6830f044ea",
         intel: "0447321c9debe820c3dd819a9e809f7a42ecab8db9ae16c9f99d117bfd98504e"

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

  depends_on macos: ">= :mojave"

  app "SmartSynchronize.app"
  binary "#{appdir}/SmartSynchronize.app/Contents/MacOS/SmartSynchronize"

  zap trash: [
    "~/Library/Preferences/com.syntevo.smartsynchronize.plist",
    "~/Library/Preferences/SmartSynchronize",
    "~/Library/Saved Application State/com.syntevo.smartsynchronize.savedState",
  ]
end
