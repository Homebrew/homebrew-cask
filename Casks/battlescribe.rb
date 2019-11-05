cask 'battlescribe' do
  version '2.03.06'
  sha256 '49205231694483c67af9ab97e339949231b4ee86d2e94291b1958e174756f0c2'

  url "https://battlescribe.net/files/BattleScribe_#{version}_Installer.dmg"
  appcast 'https://battlescribe.net/?tab=downloads'
  name 'BattleScribe'
  homepage 'https://battlescribe.net/'

  suite 'BattleScribe Tools'
  app 'BattleScribe.app'
end
