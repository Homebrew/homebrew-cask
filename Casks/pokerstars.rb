cask "pokerstars" do
  version :latest
  sha256 :no_check

  language "US", default: true do
    url "https://download.pokerstars.net/client/download/"
    homepage "https://www.pokerstars.net/"

    ".net"
  end

  name "PokerStars"

  container nested: "PokerStars.net/PokerStars.net.dmg"

  app "PokerStars.net.app"

  uninstall quit: [
                      "com.pokerstars.PokerStars.net",
                      "com.pokerstars.PokerStarsBrowse"
                  ]
  
  zap trash: [
    "~/Library/Preferences/com.pokerstars.NetworkStatus.plist",
    "~/Library/Preferences/com.pokerstars.PokerStars.net.plist",
    "~/Library/Preferences/com.pokerstars.PokerStarsBrowse.plist",
    "~/Library/Preferences/com.pokerstars.net.user.ini",
    "~/Library/Application Support/PokerStars.net",
  ]
end
