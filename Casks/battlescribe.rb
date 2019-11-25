cask 'battlescribe' do
  version '2.03.09'
  sha256 'edb39c2546ead60d7a67a30e3e1a8b7a568ce3b29bd54d5d7555d17da502267e'

  url "https://battlescribe.net/files/BattleScribe_#{version}_Installer.dmg"
  appcast 'https://battlescribe.net/?tab=downloads'
  name 'BattleScribe'
  homepage 'https://battlescribe.net/'

  suite 'BattleScribe Tools'
  app 'BattleScribe.app'
end
