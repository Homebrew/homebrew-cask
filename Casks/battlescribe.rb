cask 'battlescribe' do
  version '2.03.13'
  sha256 '7717442e007d7a13117d4b8796028a5354f9c36ec6e14df554cb5a907642363f'

  url "https://battlescribe.net/files/BattleScribe_#{version}_Installer.dmg"
  appcast 'https://battlescribe.net/?tab=downloads'
  name 'BattleScribe'
  homepage 'https://battlescribe.net/'

  suite 'BattleScribe Tools'
  app 'BattleScribe.app'
end
