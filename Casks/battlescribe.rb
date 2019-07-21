cask 'battlescribe' do
  version '2.02.04'
  sha256 '5cdddc9881f4911279fd74fee71b4a1ff408682d3aeaf5641d53cb8a3095e4e9'

  url "https://battlescribe.net/files/BattleScribe_#{version}_Installer.dmg"
  appcast 'https://battlescribe.net/?tab=downloads'
  name 'BattleScribe'
  homepage 'https://battlescribe.net/'

  suite 'BattleScribe Tools'
  app 'BattleScribe.app'
end
