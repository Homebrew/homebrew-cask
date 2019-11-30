cask 'battlescribe' do
  version '2.03.10'
  sha256 'efaa96644192767b440298906f6e08933a58902a78ddde247037557ff7b1a65d'

  url "https://battlescribe.net/files/BattleScribe_#{version}_Installer.dmg"
  appcast 'https://battlescribe.net/?tab=downloads'
  name 'BattleScribe'
  homepage 'https://battlescribe.net/'

  suite 'BattleScribe Tools'
  app 'BattleScribe.app'
end
