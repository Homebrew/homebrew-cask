cask 'sia-ui' do
  version '1.2.2'
  sha256 '727f395b5209932f67b9da0625b9abf255b5275e91c46aeaf89b2ee7c746c6fa'

  # github.com/NebulousLabs/Sia-UI was verified as official when first introduced to the cask
  url "https://github.com/NebulousLabs/Sia-UI/releases/download/v#{version}/Sia-UI-v#{version}-osx-x64.zip"
  appcast 'https://github.com/NebulousLabs/Sia-UI/releases.atom',
          checkpoint: '121f1e8775f906861a4ca376e5cb440d289411511313243d7b891982bea6cdb5'
  name 'Sia-UI'
  homepage 'http://sia.tech/'

  app 'Sia-UI.app'
end
