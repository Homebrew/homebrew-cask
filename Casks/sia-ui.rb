cask 'sia-ui' do
  version '1.3.3'
  sha256 '676507b99d8357e66d50b19309fd40b0ed86f2b26d99aa2d7a49d6e11ba96a9f'

  # github.com/NebulousLabs/Sia-UI was verified as official when first introduced to the cask
  url "https://github.com/NebulousLabs/Sia-UI/releases/download/v#{version}/Sia-UI-v#{version}-osx-x64.zip"
  appcast 'https://github.com/NebulousLabs/Sia-UI/releases.atom'
  name 'Sia-UI'
  homepage 'https://sia.tech/'

  app 'Sia-UI.app'
end
