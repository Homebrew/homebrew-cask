cask 'battlescribe' do
  version '2.03.12'
  sha256 '39d439564185b139bf19b5a6a4b51d452937f699e8aa6971f5a8e59ed3393b5e'

  url "https://battlescribe.net/files/BattleScribe_#{version}_Installer.dmg"
  appcast 'https://battlescribe.net/?tab=downloads'
  name 'BattleScribe'
  homepage 'https://battlescribe.net/'

  suite 'BattleScribe Tools'
  app 'BattleScribe.app'
end
