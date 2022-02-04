cask "ccleaner" do
  version "2.3.137"
  sha256 "2b9f39ff8c342cba2d92373e666c3cf5129cc07b57c127c71e20f3556c8031d9"

  url "https://download.ccleaner.com/mac/CCMacSetup#{version.major}#{version.minor.rjust(2, "0")}.dmg"
  name "Piriform CCleaner"
  desc "Remove junk and unused files"
  homepage "https://www.ccleaner.com/ccleaner-mac"

  livecheck do
    url "https://www.ccleaner.com/ccleaner-mac/download"
    regex(/CCleaner\s*for\s*Mac\s*v?(\d+(?:\.\d+)+)/i)
  end

  depends_on macos: ">= :yosemite"

  app "CCleaner.app"

  uninstall quit:      "com.piriform.ccleaner",
            launchctl: "com.piriform.ccleaner.CCleanerAgent",
            delete:    "/Library/PrivilegedHelperTools/com.piriform.ccleaner.CCleanerAgent"

  zap trash: [
    "~/Library/Application Support/CCleaner",
    "~/Library/Caches/com.piriform.ccleaner",
    "~/Library/Cookies/com.piriform.ccleaner.binarycookies",
    "~/Library/HTTPStorages/com.piriform.ccleaner",
    "~/Library/HTTPStorages/com.piriform.ccleaner.binarycookies",
    "~/Library/Preferences/com.piriform.ccleaner.plist",
    "~/Library/Saved Application State/com.piriform.ccleaner.savedState",
    "/Users/Shared/CCleaner",
  ]
end
