cask 'battlescribe' do
  version '2.03.02'
  sha256 'e5e1cebc3592ef8e02f1186292c3a91f58f159929078aabb95cea5695d5470e9'

  url "https://battlescribe.net/files/BattleScribe_#{version}_Installer.dmg"
  appcast 'https://battlescribe.net/?tab=downloads'
  name 'BattleScribe'
  homepage 'https://battlescribe.net/'

  suite 'BattleScribe Tools'
  app 'BattleScribe.app'
end
