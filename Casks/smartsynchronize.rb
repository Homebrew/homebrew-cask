cask "smartsynchronize" do
  arch arm: "aarch64", intel: "x86_64"

  version "4.4.1"
  sha256 arm:   "7b96d272243e1ba0ac9271c00ea5aacc5f9b8ec5096ae5e8764b61fbc7e4e0c8",
         intel: "95a3ea47e6e0559c08783867fef59c0326209606cca0edf98add8b59b9392479"

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

  zap trash: [
    "~/Library/Preferences/com.syntevo.smartsynchronize.plist",
    "~/Library/Preferences/SmartSynchronize",
    "~/Library/Saved Application State/com.syntevo.smartsynchronize.savedState",
  ]
end
