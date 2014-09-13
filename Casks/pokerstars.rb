class Pokerstars < Cask
  version 'latest'
  sha256 :no_check

  url 'http://www.pokerstars.com/PokerStars.app.zip'
  homepage 'http://www.pokerstars.com/'

  app 'PokerStars.app'
  zap :files => [
                 '~/Library/Preferences/com.pokerstars.user.ini',
                 '~/Library/Preferences/com.pokerstars.PokerStars.plist',
                ]
end
