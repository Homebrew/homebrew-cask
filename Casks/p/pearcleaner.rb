cask "pearcleaner" do
  version "3.9.1"
  sha256 "9f53164c1271b7516733aa89acafab1a27550dcc3a360e4426e49351047f0b9e"

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
