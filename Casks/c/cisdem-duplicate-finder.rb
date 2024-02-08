cask "cisdem-duplicate-finder" do
  version "6.5.0"
  sha256 :no_check

  url "https://download.cisdem.com/cisdem-duplicatefinder.dmg"
  name "Cisdem Duplicate Finder"
  desc "Duplicate Finder"
  homepage "https://www.cisdem.com/duplicate-finder.html"

  livecheck do
    url "https://www.cisdem.com/js/notes/duplicate-finder-mac.js"
    regex(/(\d+(?:\.\d+)*)\s+\(\d+(?:-\d+)+\)/i)
  end

  depends_on macos: ">= :el_capitan"

  app "Cisdem Duplicate Finder.app"

  zap trash: [
    "~/Library/Application Scripts/com.cisdem.duplicatefinder",
    "~/Library/Application Support/com.cisdem.duplicatefinder",
    "~/Library/Caches/com.cisdem.duplicatefinder",
    "~/Library/HTTPStorages/com.cisdem.duplicatefinder",
    "~/Library/Preferences/com.cisdem.duplicatefinder.plist",
  ]
end
