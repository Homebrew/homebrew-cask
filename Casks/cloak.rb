cask 'cloak' do
  version '2.0.15'
  sha256 '0ca2dd7ac96807b7e374a94be25fd3d3d22b516f116a83678fe5c65d288ef32f'

  url "https://static.getcloak.com/downloads/osx/updates/Release/Cloak-#{version}.dmg"
  appcast 'https://www.getcloak.com/updates/osx/public/',
          :checkpoint => '489c072792a4440ec012035d0b15b289c1c67deaa355cf286751762e0f684f9b'
  name 'Cloak'
  homepage 'https://www.getcloak.com'
  license :gratis

  app 'Cloak.app'
end
