cask 'pokerstars' do
  version :latest
  sha256 :no_check

  language 'US', default: true do
    ['.com', '']
  end

  language 'AT' do
    ['.eu', 'EU']
  end

  language 'DK' do
    ['.dk', 'DK']
  end

  language 'GR' do
    ['.gr', 'GR']
  end

  language 'IT' do
    ['.it', 'IT']
  end

  language 'RO' do
    ['.ro', 'RO']
  end

  language 'UK' do
    ['.uk', 'UK']
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
