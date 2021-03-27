cask "pokerstars" do
  version :latest
  sha256 :no_check

  url "https://download.pokerstars.net/client/download/"
  name "PokerStars"
  homepage "https://www.pokerstars.net/"

  container nested: "PokerStars.net/PokerStars.net.dmg"

  app "PokerStars.net.app"

  uninstall quit:   [
    "com.pokerstars.PokerStars.net",
    "com.pokerstars.PokerStarsBrowse",
  ],
            delete: "#{appdir}/PokerStars.net.app"

  zap trash: [
    "~/Library/Preferences/com.pokerstars.NetworkStatus.plist",
    "~/Library/Preferences/com.pokerstars.PokerStars.net.plist",
    "~/Library/Preferences/com.pokerstars.PokerStarsBrowse.plist",
    "~/Library/Preferences/com.pokerstars.net.user.ini",
    "~/Library/Application Support/PokerStars.net",
  ]
end
