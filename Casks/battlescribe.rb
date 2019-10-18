cask 'battlescribe' do
  version '2.03.03'
  sha256 '62a6903aa5a9a45c34c269f5851e36e69a9115f11c869ddd1feb5a48ddc21e3e'

  url "https://battlescribe.net/files/BattleScribe_#{version}_Installer.dmg"
  appcast 'https://battlescribe.net/?tab=downloads'
  name 'BattleScribe'
  homepage 'https://battlescribe.net/'

  suite 'BattleScribe Tools'
  app 'BattleScribe.app'
end
