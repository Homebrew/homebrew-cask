cask 'cloak' do
  version '2.0.15'
  sha256 '0ca2dd7ac96807b7e374a94be25fd3d3d22b516f116a83678fe5c65d288ef32f'

  url "https://static.getcloak.com/downloads/osx/updates/Release/Cloak-#{version}.dmg"
  appcast 'https://www.getcloak.com/updates/osx/public/',
          :sha256 => '04f59c7979cf7f7e241a9a94a68547da6102f5892a4bdbb324c9d3222136c526'
  name 'Cloak'
  homepage 'https://www.getcloak.com'
  license :gratis

  app 'Cloak.app'
end
