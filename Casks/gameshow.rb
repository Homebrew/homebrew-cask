cask 'gameshow' do
  version :latest
  sha256 :no_check

  url 'https://gameshow.net/downloads/Gameshow.dmg'
  name 'Gameshow'
  homepage 'https://gameshow.net/'

  app 'Gameshow.app'

  zap trash: [
               '~/Library/Preferences/GameShow',
               '~/Library/Application Support/Gameshow',
             ]
end
