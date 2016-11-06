cask 'propresenter' do
  version '6.1.2_b15157'
  sha256 '693a1ee058ed307a85ce0e7c09e4c9d44902bab52dc422465bc46ab7cd4a85c9'

  url "https://www.renewedvision.com/downloads/ProPresenter#{version.major}_#{version}.dmg"
  appcast "https://www.renewedvision.com/update/ProPresenter#{version.major}.php",
          checkpoint: '8fbd91f023565ce9cffe855793fe29849812fda7710cb0224b5de8020d524b8a'
  name 'ProPresenter'
  homepage 'https://www.renewedvision.com/propresenter.php'

  app "ProPresenter #{version.major}.app"
end
