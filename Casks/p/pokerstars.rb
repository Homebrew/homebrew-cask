cask "pokerstars" do
  version "82.946"
  sha256 :no_check

  url "https://download.pokerstars.net/PokerStars.net.app.zip"
  name "PokerStars"
  desc "Free-to-play online poker"
  homepage "https://www.pokerstars.net/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  depends_on :macos
  container nested: "PokerStars/PokerStars.dmg"

  app "PokerStars.app"

  uninstall quit:   [
              "com.pokerstars.PokerStars",
              "com.pokerstars.PokerStarsBrowse",
              "com.starstechnologies.Update",
            ],
            delete: "#{appdir}/PokerStars.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.pokerstars.pokerstars.sfl*",
    "~/Library/Application Support/PokerStars",
    "~/Library/Caches/com.pokerstars.PokerStars",
    "~/Library/Caches/PokerStars",
    "~/Library/Logs/PokerStars",
    "~/Library/Preferences/com.pokerstars.net.user.ini",
    "~/Library/Preferences/com.pokerstars.NetworkStatus.plist",
    "~/Library/Preferences/com.pokerstars.PokerStars.net.plist",
    "~/Library/Preferences/com.pokerstars.PokerStars.plist",
    "~/Library/Preferences/com.pokerstars.PokerStarsBrowse.plist",
    "~/Library/Preferences/com.pokerstars.user.ini",
    "~/Library/WebKit/com.pokerstars.PokerStars",
  ]
end
