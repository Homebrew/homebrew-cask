cask 'flipper' do
  version '0.31.2'
  sha256 'fbd90d2ba0b7cdabd529536b72a751144a42286b5a70ce266bfb72b07ca9313c'

  # github.com/facebook/flipper was verified as official when first introduced to the cask
  url "https://github.com/facebook/flipper/releases/download/v#{version}/Flipper-mac.zip"
  appcast 'https://github.com/facebook/flipper/releases.atom'
  name 'Facebook Flipper'
  name 'Sonar'
  homepage 'https://fbflipper.com/'

  app 'Flipper.app'
end
