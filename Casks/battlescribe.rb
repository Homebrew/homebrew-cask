cask 'battlescribe' do
  version '2.03.01'
  sha256 '35756e8af8103f21dff69192108f54e019049730221b9d04e299697521c33f4e'

  url "https://battlescribe.net/files/BattleScribe_#{version}_Installer.dmg"
  appcast 'https://battlescribe.net/?tab=downloads'
  name 'BattleScribe'
  homepage 'https://battlescribe.net/'

  suite 'BattleScribe Tools'
  app 'BattleScribe.app'
end
