cask 'qtox' do
  version '1.4.1.1'
  sha256 'e0dd8ecab2dc39bba1e6f34e44927e7bee9ca0f55f4c433f16079d4ba5cf4ab8'

  # github.com/tux3/qTox was verified as official when first introduced to the cask
  url "https://github.com/tux3/qTox/releases/download/v#{version}/qTox.dmg"
  appcast 'https://github.com/tux3/qtox/releases.atom',
          checkpoint: '3ddde03e902cc0266f14fc93268cb8ed29f774354677a3af78f7537cb17393d8'
  name 'qTox'
  homepage 'https://qtox.github.io/'
  license :gpl

  app 'qTox.app'
end
