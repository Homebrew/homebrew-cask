cask 'sandman' do
  version '1.9.1'
  sha256 '231bdc3194678c32aa8f16c1604cb1e1b84ac488f962a87a8d81170b01e5d221'

  # github.com/alexanderepstein/Sandman was verified as official when first introduced to the cask
  url "https://github.com/alexanderepstein/Sandman/releases/download/v#{version}/Sandman-#{version}.dmg"
  appcast 'https://github.com/alexanderepstein/Sandman/releases.atom',
          checkpoint: '135446e926f3d617eda7b18b46dd589ad818173d7f976f62dad1c4bc0729e7fd'
  name 'Sandman'
  homepage 'https://alexanderepstein.github.io/Sandman/'

  app 'Sandman.app'
end
