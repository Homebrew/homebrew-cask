cask 'flinto' do
  version '1.6.3'
  sha256 '4bdc7a9bebdc2d0d62ad728a89d65e59db9e5dddfab652cc76a8bd1e810543e5'

  url "https://www.flinto.com/assets/Flinto-#{version}.dmg"
  name 'Flinto'
  homepage 'https://www.flinto.com/mac'

  app 'Flinto.app'

  uninstall pkgutil: 'com.flinto.*',
            delete:  '/Applications/FLinto.app'
end
