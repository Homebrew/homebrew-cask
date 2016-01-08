cask 'cloak' do
  version '2.0.15'
  sha256 '0ca2dd7ac96807b7e374a94be25fd3d3d22b516f116a83678fe5c65d288ef32f'

  url "https://static.getcloak.com/downloads/osx/updates/Release/Cloak-#{version}.dmg"
  appcast 'https://www.getcloak.com/updates/osx/public/',
          :sha256 => '3711b74f2e2bce701f3a7c57a3052137ab2eeef189d1b47603fe59351fb80b48'
  name 'Cloak'
  homepage 'https://www.getcloak.com'
  license :gratis

  app 'Cloak.app'
end
