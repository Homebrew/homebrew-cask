cask 'flipper' do
  version '0.14.0'
  sha256 'cc0d8c7595b3c9f87625b8c86b51b09ecce39e764790d0645daa404e3d227db3'

  # github.com/facebook/flipper was verified as official when first introduced to the cask
  url "https://github.com/facebook/flipper/releases/download/v#{version}/Flipper.zip"
  appcast 'https://github.com/facebook/flipper/releases.atom'
  name 'Facebook Flipper'
  name 'Sonar'
  homepage 'https://fbflipper.com/'

  app 'Flipper.app'
end
