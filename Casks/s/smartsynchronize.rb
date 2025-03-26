cask "smartsynchronize" do
  arch arm: "aarch64", intel: "x86_64"

  version "4.6.1"
  sha256 arm:   "11169671b21f39ed476bb3500797b5546a89b7cb81a7f011a96f35ed44d80bfb",
         intel: "0e91d8a36f4a844f5380dd1c73a7d86c270701331640fbb089a28c61030e9de1"

  url "https://www.syntevo.com/downloads/smartsynchronize/smartsynchronize-#{arch}-#{version.dots_to_underscores}.dmg"
  name "SmartSynchronize"
  desc "File and directory compare tool"
  homepage "https://www.syntevo.com/smartsynchronize/"

  livecheck do
    url "https://www.syntevo.com/smartsynchronize/download/"
    regex(/smartsynchronize[._-]#{arch}[._-]v?(\d+(?:_\d+)+)\.dmg/i)
    strategy :page_match do |page, regex|
      match = page.match(regex)
      next if match.blank?

      match[1].tr("_", ".")
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
