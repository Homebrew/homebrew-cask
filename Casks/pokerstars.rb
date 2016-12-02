cask 'pokerstars' do
  version :latest
  sha256 :no_check

  language 'en', default: true do
    %w[com]
  end

  language 'pt' do
    %w[pt PT]
  end

  language 'eu' do
    %w[eu EU]
  end

  url "https://www.pokerstars.#{language[0]}/PokerStars#{language[1]}.app.zip"
  name 'PokerStars'
  homepage "https://www.pokerstars.#{language[0]}"

  auto_updates true
  container nested: "PokerStars#{language[1]}/PokerStars#{language[1]}.dmg"

  app "PokerStars#{language[1]}.app"

  zap delete: [
                "~/Library/Preferences/com.pokerstars#{language[1]}.user.ini",
                "~/Library/Preferences/com.pokerstars.PokerStars#{language[1]}.plist",
                "~/Library/Application Support/PokerStars#{language[1]}",
              ]
end
