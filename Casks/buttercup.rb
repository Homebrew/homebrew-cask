cask 'buttercup' do
  version '1.19.0'
  sha256 'c93ee64117e2728ab21ec1e1c71ec8c477464f807a13c272923e0d66d45d3668'

  # github.com/buttercup/buttercup-desktop/ was verified as official when first introduced to the cask
  url "https://github.com/buttercup/buttercup-desktop/releases/download/v#{version}/Buttercup-#{version}.dmg"
  appcast 'https://github.com/buttercup/buttercup-desktop/releases.atom'
  name 'Buttercup'
  homepage 'https://buttercup.pw/'

  app 'Buttercup.app'
end
