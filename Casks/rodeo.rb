cask 'rodeo' do
  version '2.0.7'
  sha256 '4817eb8bf64a3395ca645816d60f5a090afdccb8a6ecb2eb9c7f92c0e193d09f'

  # github.com/yhat/rodeo was verified as official when first introduced to the cask
  url "https://github.com/yhat/rodeo/releases/download/v#{version}/Rodeo-#{version}.dmg"
  appcast 'https://github.com/yhat/rodeo/releases.atom',
          checkpoint: 'a4a66081dd1de9652c509477e443ac3e55750c0931cbe829d9b2d43e55664632'
  name 'Rodeo'
  homepage 'http://rodeo.yhat.com/'
  license :affero

  app 'Rodeo.app'
end
