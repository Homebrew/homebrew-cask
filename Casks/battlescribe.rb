cask 'battlescribe' do
  version '2.03.15'
  sha256 'e4ad9f59538835d49d953549e8f00b210367f7db363b7a66aad8aa57e5c4e7f8'

  url "https://battlescribe.net/files/BattleScribe_#{version}_Installer.pkg"
  appcast 'https://battlescribe.net/?tab=downloads'
  name 'BattleScribe'
  homepage 'https://battlescribe.net/'

  pkg "BattleScribe_#{version}_Installer.pkg"
  
  uninstall pkgutil: 'dunno'  
end
