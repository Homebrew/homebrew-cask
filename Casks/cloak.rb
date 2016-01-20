cask 'cloak' do
  version '2.0.15'
  sha256 '0ca2dd7ac96807b7e374a94be25fd3d3d22b516f116a83678fe5c65d288ef32f'

  url "https://static.getcloak.com/downloads/osx/updates/Release/Cloak-#{version}.dmg"
  appcast 'https://www.getcloak.com/updates/osx/public/',
          checkpoint: 'e2305f4fcc3ea06e4ca7559caab7ed0b8151b0d382bdb71dacc6063b69eaa489'
  name 'Cloak'
  homepage 'https://www.getcloak.com'
  license :gratis

  app 'Cloak.app'
end
