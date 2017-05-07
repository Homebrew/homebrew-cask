cask 'buttercup' do
  version '0.14.0'
  sha256 '4a9233c266dda6bd2643db23da1c76be45faa3c214b92f0554ec55043ebc37b3'

  # github.com/buttercup/buttercup was verified as official when first introduced to the cask
  url "https://github.com/buttercup/buttercup/releases/download/v#{version}/Buttercup-#{version}-mac.zip"
  appcast 'https://github.com/buttercup/buttercup/releases.atom',
          checkpoint: '7703beb0ee8b9c7bfb54cd529e0996542d71e21baa192c2faee60cc94a08b43f'
  name 'Buttercup'
  homepage 'https://buttercup.pw/'

  app 'Buttercup.app'
end
