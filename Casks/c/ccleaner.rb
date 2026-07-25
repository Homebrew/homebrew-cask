cask "ccleaner" do
  version "2.11.194"
  sha256 "1a641d1d54fe1db5925a3cf15fd25367a92bffc206057f82b83c34ca4850fc7c"

  url "https://download.ccleaner.com/mac/CCMacSetup#{version.major}#{version.minor.rjust(2, "0")}.dmg"
  name "Piriform CCleaner"
  desc "Remove junk and unused files"
  homepage "https://www.ccleaner.com/ccleaner-mac"

  livecheck do
    url "https://www.ccleaner.com/ccleaner-mac/download"
    regex(/CCleaner\s*for\s*Mac\s*v?(\d+(?:\.\d+)+)/i)
  end

  auto_updates true
  depends_on :macos

  pkg "Install CCleaner.pkg"

  uninstall launchctl: [
              "com.piriform.ccleaner (com.piriform.CCleaner)",
              "com.piriform.CCleaner",
              "com.piriform.ccleaner.CCleanerAgent",
              "com.piriform.ccleaner.engine.xpc",
              "com.piriform.ccleaner.services.submit",
              "com.piriform.ccleaner.services.xpc",
              "com.piriform.ccleaner.uninstall",
              "com.piriform.ccleaner.update",
              "com.piriform.ccleaner.update.xpc",
            ],
            quit:      "com.piriform.ccleaner",
            pkgutil:   "com.piriform.pkg.CCleaner",
            delete:    "/Library/PrivilegedHelperTools/com.piriform.ccleaner.CCleanerAgent"

  zap trash: [
    "/Users/Shared/CCleaner",
    "~/Library/Application Support/CCleaner",
    "~/Library/Caches/com.piriform.ccleaner",
    "~/Library/Cookies/com.piriform.ccleaner.binarycookies",
    "~/Library/HTTPStorages/com.piriform.ccleaner",
    "~/Library/HTTPStorages/com.piriform.ccleaner.binarycookies",
    "~/Library/Preferences/com.piriform.ccleaner.plist",
    "~/Library/Saved Application State/com.piriform.ccleaner.savedState",
  ]
end
