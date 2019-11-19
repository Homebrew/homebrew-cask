cask 'buttercup' do
  version '1.17.3'
  sha256 '8bb83ef5b68e79078c6363c9b1a16ed3f8f7913192246f0e8349adf55fe98459'

  # github.com/buttercup/buttercup-desktop was verified as official when first introduced to the cask
  url "https://github.com/buttercup/buttercup-desktop/releases/download/v#{version}/Buttercup-#{version}-mac.zip"
  appcast 'https://github.com/buttercup/buttercup-desktop/releases.atom'
  name 'Buttercup'
  homepage 'https://buttercup.pw/'

  app 'Buttercup.app'
end
