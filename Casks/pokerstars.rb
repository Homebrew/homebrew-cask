cask 'pokerstars' do
  version :latest
  sha256 :no_check

  language 'US', default: true do
    ['.net', '.net']
  end

  language 'PT' do
    ['.pt', 'PT']
  end

  url "http://www.pokerstars#{language[0]}/PokerStars#{language[1]}.app.zip"
  name 'PokerStars'
  homepage "http://www.pokerstars#{language[0]}"

  auto_updates true
  container nested: "PokerStars#{language[1]}/PokerStars#{language[1]}.dmg"

  app "PokerStars#{language[1]}.app"

  zap trash: [
               "~/Library/Preferences/com.pokerstars#{language[1]}.user.ini",
               "~/Library/Preferences/com.pokerstars.PokerStars#{language[1]}.plist",
               "~/Library/Application Support/PokerStars#{language[1]}",
             ]
end
