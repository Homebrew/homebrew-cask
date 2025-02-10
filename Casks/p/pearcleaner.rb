cask "pearcleaner" do
  version "4.2.0"
  sha256 "abab779817ae84ad9afa91b3e30f39024c091eafd166cbd6b00fecbd42a42e2b"

  url "https://github.com/alienator88/Pearcleaner/releases/download/#{version}/Pearcleaner.zip",
      verified: "github.com/alienator88/Pearcleaner/"
  name "Pearcleaner"
  desc "Utility to uninstall apps and remove leftover files from old/uninstalled apps"
  homepage "https://itsalin.com/appInfo/?id=pearcleaner"

  auto_updates true
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
