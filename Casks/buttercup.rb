cask 'buttercup' do
  version '1.15.0'
  sha256 '6405030505909def7703aa517b1bf04f266bb3f005ed3d14bb80b5ea5b3fd39d'

  # github.com/buttercup/buttercup-desktop was verified as official when first introduced to the cask
  url "https://github.com/buttercup/buttercup-desktop/releases/download/v#{version}/Buttercup-#{version}-mac.zip"
  appcast 'https://github.com/buttercup/buttercup-desktop/releases.atom'
  name 'Buttercup'
  homepage 'https://buttercup.pw/'

  app 'Buttercup.app'
end
