cask 'sia-ui' do
  version '1.3.1'
  sha256 'aff1760f6f91a796cafb647a035942274f02052511b7547ea4380e3d58a24b3d'

  # github.com/NebulousLabs/Sia-UI was verified as official when first introduced to the cask
  url "https://github.com/NebulousLabs/Sia-UI/releases/download/v#{version}/Sia-UI-v#{version}-osx-x64.zip"
  appcast 'https://github.com/NebulousLabs/Sia-UI/releases.atom',
          checkpoint: '4c727bf5b54da90da33e8375ec0abb27b407431b2e4ea28b5d3dc27f152f31ec'
  name 'Sia-UI'
  homepage 'https://sia.tech/'

  app 'Sia-UI.app'
end
