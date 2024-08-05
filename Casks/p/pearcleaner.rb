cask "pearcleaner" do
  version "3.8.4"
  sha256 "f12a07a60065c1eb0061feab7251aafaf335f0286f3a2809808384ec4ef1b0a9"

  url "https://github.com/alienator88/Pearcleaner/releases/download/#{version}/Pearcleaner.zip",
      verified: "github.com/alienator88/Pearcleaner/"
  name "Pearcleaner"
  desc "Utility to uninstall apps and remove leftover files from old/uninstalled apps"
  homepage "https://itsalin.com/appInfo/?id=pearcleaner"

  depends_on macos: ">= :ventura"

  app "Pearcleaner.app"

  uninstall launchctl:  "com.alienator88.PearcleanerSentinel*",
            quit:       "com.alienator88.Pearcleaner",
            login_item: "Pearcleaner"

  zap trash: [
    "~/Library/Application Scripts/com.alienator88.Pearcleaner*",
    "~/Library/Application Support/Pearcleaner",
    "~/Library/Caches/com.alienator88.Pearcleaner",
    "~/Library/Containers/com.alienator88.Pearcleaner*",
    "~/Library/Group Containers/com.alienator88.Pearcleaner",
    "~/Library/HTTPStorages/com.alienator88.Pearcleaner",
    "~/Library/Preferences/com.alienator88.Pearcleaner.plist",
    "~/Library/Saved Application State/com.alienator88.Pearcleaner.savedState",
  ]
end
