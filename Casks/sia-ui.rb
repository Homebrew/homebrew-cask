cask 'sia-ui' do
  version '1.3.2'
  sha256 '7439a82e45c143efe6f54278f85b68950467431978ccaac071b55747dce3913e'

  # github.com/NebulousLabs/Sia-UI was verified as official when first introduced to the cask
  url "https://github.com/NebulousLabs/Sia-UI/releases/download/v#{version}/Sia-UI-v#{version}-osx-x64.zip"
  appcast 'https://github.com/NebulousLabs/Sia-UI/releases.atom',
          checkpoint: '002db845cfcb30491b06d5c2ee4ab9ff152c778de130954ec1062fd3c2aa7fd1'
  name 'Sia-UI'
  homepage 'https://sia.tech/'

  app 'Sia-UI.app'
end
