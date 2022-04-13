cask "pokerstars" do
  version "46.372"
  sha256 :no_check

  url "https://download.pokerstars.net/client/download/"
  name "PokerStars"
  desc "Free-to-play online poker"
  homepage "https://www.pokerstars.net/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  container nested: "PokerStars.net/PokerStars.net.dmg"

  app "PokerStars.net.app"

  uninstall quit:   [
    "com.pokerstars.PokerStars.net",
    "com.pokerstars.PokerStarsBrowse",
  ],
            delete: "#{appdir}/PokerStars.net.app"

  zap trash: [
    "~/Library/Application Support/PokerStars.net",
    "~/Library/Preferences/com.pokerstars.net.user.ini",
    "~/Library/Preferences/com.pokerstars.NetworkStatus.plist",
    "~/Library/Preferences/com.pokerstars.PokerStars.net.plist",
    "~/Library/Preferences/com.pokerstars.PokerStarsBrowse.plist",
  ]
end
