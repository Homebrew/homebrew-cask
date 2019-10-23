cask 'battlescribe' do
  version '2.03.04'
  sha256 '8d79c0413f498971e5347ba98322fc3aa8cfd5b7c597443d35dc702842b5849e'

  url "https://battlescribe.net/files/BattleScribe_#{version}_Installer.dmg"
  appcast 'https://battlescribe.net/?tab=downloads'
  name 'BattleScribe'
  homepage 'https://battlescribe.net/'

  suite 'BattleScribe Tools'
  app 'BattleScribe.app'
end
