cask 'battlescribe' do
  version '2.03.11'
  sha256 '4418ec733cce89dd5151c9fabb487a9ab5963aea00893134cfcf1294d349a15a'

  url "https://battlescribe.net/files/BattleScribe_#{version}_Installer.dmg"
  appcast 'https://battlescribe.net/?tab=downloads'
  name 'BattleScribe'
  homepage 'https://battlescribe.net/'

  suite 'BattleScribe Tools'
  app 'BattleScribe.app'
end
