cask 'buttercup' do
  version '1.10.2'
  sha256 '7cf5fbaa6f2f37b68a22322da868f222a5e6ac17508f2c0c31fc69b78ab0ac03'

  # github.com/buttercup/buttercup-desktop was verified as official when first introduced to the cask
  url "https://github.com/buttercup/buttercup-desktop/releases/download/v#{version}/Buttercup-#{version}-mac.zip"
  appcast 'https://github.com/buttercup/buttercup-desktop/releases.atom'
  name 'Buttercup'
  homepage 'https://buttercup.pw/'

  app 'Buttercup.app'
end
