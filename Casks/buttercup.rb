cask 'buttercup' do
  version '0.25.0'
  sha256 'f6b061862a2094d5f74a4efb168ad570a69798d9e61ec1aecdafeb88c67a9c3a'

  # github.com/buttercup/buttercup-desktop was verified as official when first introduced to the cask
  url "https://github.com/buttercup/buttercup-desktop/releases/download/v#{version}/buttercup-desktop-#{version}-mac.zip"
  appcast 'https://github.com/buttercup/buttercup-desktop/releases.atom',
          checkpoint: '6a0b1030033245d1cecd30c0fd3086761f3ab4fe2289ff27ea815ff91cc3d3d2'
  name 'Buttercup'
  homepage 'https://buttercup.pw/'

  app 'Buttercup.app'
end
