cask "ccleaner" do
  version "1.18.30"
  sha256 "52295172b846c477f1c5396c9f568d602b89fad52d2fcaba394a14296e096ce6"

  url "https://download.ccleaner.com/mac/CCMacSetup#{version.major_minor.no_dots}.dmg"
  name "Piriform CCleaner"
  desc "Remove junk and unused files"
  homepage "https://www.ccleaner.com/ccleaner-mac"

  livecheck do
    url "https://www.ccleaner.com/ccleaner/download?mac"
    strategy :page_match
    regex(/CCleaner\s*Mac\s*v?(\d+(?:\.\d+)*)/i)
  end

  app "CCleaner.app"

  zap trash: [
    "~/Library/Application Support/CCleaner",
    "~/Library/Caches/com.piriform.ccleaner",
    "~/Library/Preferences/com.piriform.ccleaner.plist",
    "~/Library/Saved Application State/com.piriform.ccleaner.savedState",
    "~/Library/Cookies/com.piriform.ccleaner.binarycookies",
    "/Users/Shared/CCleaner",
  ]
end
