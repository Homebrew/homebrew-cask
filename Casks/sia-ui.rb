cask 'sia-ui' do
  version '1.3.6'
  sha256 '8fa97f7b59bc20cf6bccecbf02292721412be4483f8c25a6b7f4fcefb6199669'

  # github.com/NebulousLabs/Sia-UI was verified as official when first introduced to the cask
  url "https://github.com/NebulousLabs/Sia-UI/releases/download/v#{version}/Sia-UI-v#{version}-osx-x64.zip"
  appcast 'https://github.com/NebulousLabs/Sia-UI/releases.atom'
  name 'Sia-UI'
  homepage 'https://sia.tech/'

  app 'Sia-UI.app'
end
