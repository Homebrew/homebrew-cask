cask :v1 => 'pokerstars' do
  version :latest
  sha256 :no_check

  url 'http://www.pokerstars.com/PokerStars.app.zip'
  name 'PokerStars'
  homepage 'http://www.pokerstars.com/'
  license :freemium

  app 'PokerStars.app'

  zap :delete => [
                  '~/Library/Preferences/com.pokerstars.user.ini',
                  '~/Library/Preferences/com.pokerstars.PokerStars.plist',
                 ]
end
