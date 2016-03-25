cask 'gameranger' do
  version :latest
  sha256 :no_check

  url 'https://gameranger.com/download/GameRanger.dmg'
  name 'GameRanger'
  homepage 'https://gameranger.com'
  license :gratis

  app 'GameRanger.app'

  zap delete: [
                '~/Library/Caches/com.gameranger.GameRanger',
                '~/Library/Preferences/com.gameranger.GameRanger.plist',
                '~/Library/Preferences/GameRanger Prefs',
                '~/Library/Saved Application State/com.gameranger.GameRanger.savedState',
              ]
end
