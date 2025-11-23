cask "smartsynchronize" do
  arch arm: "aarch64", intel: "x86_64"

  version "4.6.3"
  sha256 arm:   "980d3d4d95d1f19a6eaa15d2564d852107e02ba07cc9c1097e69627b27731c83",
         intel: "26b7c0aebe3bc75bd86fdd6f9fd95ad3ae1110d8f43b3dfc3bb016b212aa5fd7"

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

  app "SmartSynchronize.app"
  binary "#{appdir}/SmartSynchronize.app/Contents/MacOS/SmartSynchronize"

  zap trash: [
    "~/Library/Preferences/com.syntevo.smartsynchronize.plist",
    "~/Library/Preferences/SmartSynchronize",
    "~/Library/Saved Application State/com.syntevo.smartsynchronize.savedState",
  ]
end
