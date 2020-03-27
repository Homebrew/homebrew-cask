cask 'battlescribe' do
  version '2.03.14'
  sha256 '91c4bfaf47137608bf71c14aecc2e5e5a7df61797de5d013c7fdaa5b54980650'

  url "https://battlescribe.net/files/BattleScribe_#{version}_Installer.dmg"
  appcast 'https://battlescribe.net/?tab=downloads'
  name 'BattleScribe'
  homepage 'https://battlescribe.net/'

  suite 'BattleScribe Tools'
  app 'BattleScribe.app'
end
