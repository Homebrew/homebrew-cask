cask "coccoc" do
  version "87.0.4280.148,87.0.148"
  sha256 :no_check

  url "https://files.coccoc.com/browser/mac/coccoc.dmg"
  name "Cốc Cốc"
  desc "Chromium-based web browser"
  homepage "https://coccoc.com/"

  app "CocCoc.app"

  uninstall launchctl: "com.coccoc.CocCoc"

  zap trash: [
    "~/Library/Application Support/Coccoc",
    "~/Library/Caches/Coccoc",
    "~/Library/Caches/com.coccoc.Coccoc",
    "~/Library/Preferences/com.coccoc.Coccoc.plist",
    "~/Library/Saved Application State/com.coccoc.Coccoc.savedState",
  ]
end
