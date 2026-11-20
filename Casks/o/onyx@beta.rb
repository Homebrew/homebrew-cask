cask "onyx@beta" do
  version "5.1.0,260910"
  sha256 :no_check

  url "https://www.titanium-software.fr/download/beta/OnyX.dmg"
  name "OnyX Beta"
  desc "Verify system files structure, run miscellaneous maintenance and more"
  homepage "https://www.titanium-software.fr/en/onyx.html"

  disable! date: "2026-10-16", because: :no_longer_available

  conflicts_with cask: "onyx"
  depends_on macos: :golden_gate

  app "OnyX.app"

  zap trash: [
    "~/Library/Caches/com.apple.helpd/SDMHelpData/Other/English/HelpSDMIndexFile/com.titanium.OnyX.help*",
    "~/Library/Logs/OnyX.log",
    "~/Library/Preferences/com.titanium.OnyX.plist",
    "~/Library/Preferences/com.titanium.OnyX.update.plist",
    "~/Library/Preferences/OnyX.plist",
    "~/Library/Saved Application State/com.titanium.OnyX.savedState",
  ]
end
