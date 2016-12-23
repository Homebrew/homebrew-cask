cask 'piskel' do
  version '0.8.0'
  sha256 'f7d00410dfdab9cf74b1b51c083a62408d0aafde734d470aa9d6a6419d4255aa'

  # dl.dropboxusercontent.com/u/17803671 was verified as official when first introduced to the cask
  url "https://dl.dropboxusercontent.com/u/17803671/piskel/standalone/mac/piskel-#{version}.dmg"
  appcast 'https://github.com/juliandescottes/piskel/releases.atom',
          checkpoint: '570dd72714a3996487ff54f10e220b8eba1193d8465a612e9a1fbb09f18e5c71'
  name 'Piskel'
  homepage 'http://www.piskelapp.com/'

  app 'Piskel.app'
end
