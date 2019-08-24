cask 'battlescribe' do
  version '2.03.00'
  sha256 '0c22c4c4a332338e015a9c1d5ad3efa44b7b486ae113d24e4049d7040c317268'

  url "https://battlescribe.net/files/BattleScribe_#{version}_Installer.dmg"
  appcast 'https://battlescribe.net/?tab=downloads'
  name 'BattleScribe'
  homepage 'https://battlescribe.net/'

  suite 'BattleScribe Tools'
  app 'BattleScribe.app'
end
