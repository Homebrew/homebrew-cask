cask 'sia-ui' do
  version '1.3.4'
  sha256 '7922e632eaf64f809c11900d3ba57100ca4ad298efe9d3c87efd566cd0a4ef7a'

  # github.com/NebulousLabs/Sia-UI was verified as official when first introduced to the cask
  url "https://github.com/NebulousLabs/Sia-UI/releases/download/v#{version}/Sia-UI-v#{version}-osx-x64.zip"
  appcast 'https://github.com/NebulousLabs/Sia-UI/releases.atom'
  name 'Sia-UI'
  homepage 'https://sia.tech/'

  app 'Sia-UI.app'
end
