cask :v1 => 'pokerstars' do
  version :latest
  sha256 :no_check

  url 'http://www.pokerstars.com/PokerStars.app.zip'
  homepage 'http://www.pokerstars.com/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'PokerStars.app'

  zap :delete => [
                  '~/Library/Preferences/com.pokerstars.user.ini',
                  '~/Library/Preferences/com.pokerstars.PokerStars.plist',
                 ]
end
