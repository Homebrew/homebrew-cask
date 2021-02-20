cask "spritesheeter" do
  version "1.2"
  sha256 "477ab9cb389b685b6ec660f5f33a5a300f825d890994e64e039124c51d8396cc"

  url "https://github.com/meh2481/SpriteSheeter/releases/download/v#{version}/SpriteSheeter_#{version}_Mac.zip"
  name "SpriteSheeter"
  desc "GUI program for creating sprite sheets"
  homepage "https://www.vg-resource.com/thread-29374.html"

  app "SpriteSheeter.app"

  zap trash: [
    "~/Library/Preferences/as.SpriteSheeter.plist",
    "~/Library/Preferences/com.daxardev.SpriteSheeter.plist",
    "~/Library/Preferences/com.daxardev.SpriteSheeterIcon.plist",
    "~/Library/Preferences/com.daxardev.SpriteSheeterImport.plist",
    "~/Library/Preferences/com.daxardev.SpriteSheeterRecentDocuments.plist",
    "~/Library/Preferences/com.yourcompany.SpriteSheeter.plist",
    "~/Library/Saved Application State/as.SpriteSheeter.savedState",
    "~/Library/Saved Application State/com.yourcompany.SpriteSheeter.savedState",
  ]
end
