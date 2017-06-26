cask 'buttercup' do
  version '0.18.0'
  sha256 '79fecced3534194604839048625b35e585742016a6c79df115663d63c27817f4'

  # github.com/buttercup/buttercup-desktop was verified as official when first introduced to the cask
  url "https://github.com/buttercup/buttercup-desktop/releases/download/v#{version}/Buttercup-#{version}-mac.zip"
  appcast 'https://github.com/buttercup/buttercup-desktop/releases.atom',
          checkpoint: '9db5a0812078c2c86d1930e592fabb5d3c137a4e024ca7c4e9d6e9c40e4a4f5d'
  name 'Buttercup'
  homepage 'https://buttercup.pw/'

  app 'Buttercup.app'
end
