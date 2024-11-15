cask "pokerstars" do
  version "73.057"
  sha256 :no_check

  url "https://download.pokerstars.net/PokerStars.net.app.zip"
  name "PokerStars"
  desc "Free-to-play online poker"
  homepage "https://www.pokerstars.net/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  depends_on macos: ">= :high_sierra"
  container nested: "PokerStars/PokerStars.dmg"

  app "PokerStars.app"

  uninstall quit:   [
              "com.pokerstars.PokerStars",
              "com.pokerstars.PokerStarsBrowse",
            ],
            delete: "#{appdir}/PokerStars.app"

  zap trash: [
    "~/Library/Application Support/PokerStars",
    "~/Library/Caches/PokerStars",
    "~/Library/Logs/PokerStars",
    "~/Library/Preferences/com.pokerstars.net.user.ini",
    "~/Library/Preferences/com.pokerstars.NetworkStatus.plist",
    "~/Library/Preferences/com.pokerstars.PokerStars.net.plist",
    "~/Library/Preferences/com.pokerstars.PokerStarsBrowse.plist",
  ]
end
