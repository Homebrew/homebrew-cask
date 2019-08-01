cask 'buttercup' do
  version '1.16.2'
  sha256 'c01c9fc30e323de3ac8d05912b2400ccf87248d248211c2382cd9b236c2e1b6d'

  # github.com/buttercup/buttercup-desktop was verified as official when first introduced to the cask
  url "https://github.com/buttercup/buttercup-desktop/releases/download/v#{version}/Buttercup-#{version}-mac.zip"
  appcast 'https://github.com/buttercup/buttercup-desktop/releases.atom'
  name 'Buttercup'
  homepage 'https://buttercup.pw/'

  app 'Buttercup.app'
end
