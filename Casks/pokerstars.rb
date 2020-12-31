cask "pokerstars" do
  version :latest
  sha256 :no_check

  language "US", default: true do
    url "https://www.pokerstars.net/PokerStars.net.app.zip"
    homepage "https://www.pokerstars.net/"

    ".net"
  end
  language "DK" do
    url "https://www.pokerstars.net/PokerStars.net.app.zip",
        verified: "pokerstars.net/"
    homepage "https://www.pokerstars.dk/"

    ".net"
  end
  language "GR" do
    url "https://www.pokerstars.net/PokerStars.net.app.zip",
        verified: "pokerstars.net/"
    homepage "https://www.pokerstars.gr/"

    ".net"
  end
  language "IT" do
    url "https://www.pokerstars.net/PokerStars.net.app.zip",
        verified: "pokerstars.net/"
    homepage "https://www.pokerstars.it/"

    ".net"
  end
  language "GB" do
    url "https://www.pokerstars.uk/PokerStarsUK.app.zip"
    homepage "https://www.pokerstars.uk/"

    "UK"
  end
  language "PT" do
    url "https://www.pokerstars.pt/PokerStarsPT.app.zip"
    homepage "https://www.pokerstars.pt/"

    "PT"
  end

  name "PokerStars"

  container nested: "PokerStars#{language}/PokerStars#{language}.dmg"

  app "PokerStars#{language}.app"

  zap trash: [
    "~/Library/Preferences/com.pokerstars#{language[1]}.user.ini",
    "~/Library/Preferences/com.pokerstars.PokerStars#{language[1]}.plist",
    "~/Library/Application Support/PokerStars#{language[1]}",
  ]
end
