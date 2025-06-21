cask "smartsynchronize" do
  arch arm: "aarch64", intel: "x86_64"

  version "4.6.2"
  sha256 arm:   "d44ce873a723d9fe02c2b57ab66cc3bdc403475661f19feb7a9b28a6d84218be",
         intel: "beceede4c22d98b86f05d51c59bd18490551b7f59893957d20af18f1df909a68"

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
