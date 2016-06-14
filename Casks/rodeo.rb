cask 'rodeo' do
  version '1.4.9'
  sha256 '0e590fd0cc91153f971c56562cb4c2ae9b5209547c9e4043371ca03f53155b4c'

  # github.com/yhat/rodeo was verified as official when first introduced to the cask
  url "https://github.com/yhat/rodeo/releases/download/v#{version}/Rodeo-#{version}.dmg"
  appcast 'https://github.com/yhat/rodeo/releases.atom',
          checkpoint: '8a2cc3b31afd75edc1c9b3bb738bfb2f761c7a8d7f87c1f111550a6499ef1038'
  name 'Rodeo'
  homepage 'http://rodeo.yhat.com/'
  license :closed

  app 'Rodeo.app'
end
