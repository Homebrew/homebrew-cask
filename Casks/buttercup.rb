cask 'buttercup' do
  version '0.25.2'
  sha256 '89b095ce0362f8f11e30d04626bc59520eb28626b6da3e48c449dc69323a449c'

  # github.com/buttercup/buttercup-desktop was verified as official when first introduced to the cask
  url "https://github.com/buttercup/buttercup-desktop/releases/download/v#{version}/buttercup-desktop-#{version}-mac.zip"
  appcast 'https://github.com/buttercup/buttercup-desktop/releases.atom',
          checkpoint: '7f64039ae2de5852920e295b95b450ec267ad8daf59892c76841bf7f0c58f55c'
  name 'Buttercup'
  homepage 'https://buttercup.pw/'

  app 'Buttercup.app'
end
