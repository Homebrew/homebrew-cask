cask "pearcleaner" do
  version "5.2.2"
  sha256 "b74ec9ae2a5645bf61c3fdeebcfcacbc9f9837cf232de8e7d0f0a1db1e9ccae8"

  url "https://github.com/alienator88/Pearcleaner/releases/download/#{version}/Pearcleaner.zip",
      verified: "github.com/alienator88/Pearcleaner/"
  name "Pearcleaner"
  desc "Utility to uninstall apps and remove leftover files from old/uninstalled apps"
  homepage "https://itsalin.com/appInfo/?id=pearcleaner"

  auto_updates true
  depends_on macos: ">= :ventura"

  app "Pearcleaner.app"
  binary "#{appdir}/Pearcleaner.app/Contents/MacOS/Pearcleaner", target: "pearcleaner"

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
