cask 'battlescribe' do
  version '2.03.07'
  sha256 'e344a6177d80ee22ac641804caa5abe73a508acd57fc148f76e46e295fc83bfc'

  url "https://battlescribe.net/files/BattleScribe_#{version}_Installer.dmg"
  appcast 'https://battlescribe.net/?tab=downloads'
  name 'BattleScribe'
  homepage 'https://battlescribe.net/'

  suite 'BattleScribe Tools'
  app 'BattleScribe.app'
end
