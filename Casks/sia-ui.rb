cask 'sia-ui' do
  version '1.3.0'
  sha256 '7f83760f066f6b58cd86258c78e73b77067daf843ae97f63c1004d8098138130'

  # github.com/NebulousLabs/Sia-UI was verified as official when first introduced to the cask
  url "https://github.com/NebulousLabs/Sia-UI/releases/download/v#{version}/Sia-UI-v#{version}-osx-x64.zip"
  appcast 'https://github.com/NebulousLabs/Sia-UI/releases.atom',
          checkpoint: '64fcd3a0da4106592da46c40f19caa11848a2e924fff1842aecb0ba85ba70d9a'
  name 'Sia-UI'
  homepage 'https://sia.tech/'

  app 'Sia-UI.app'
end
