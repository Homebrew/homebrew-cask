cask 'flipper' do
  version '0.37.0'
  sha256 '8e685143a7d933a8a6211efcedb0e689dc3d0a4faf564919548c15aabe5c3a48'

  # github.com/facebook/flipper/ was verified as official when first introduced to the cask
  url "https://github.com/facebook/flipper/releases/download/v#{version}/Flipper-mac.zip"
  appcast 'https://github.com/facebook/flipper/releases.atom'
  name 'Facebook Flipper'
  name 'Sonar'
  homepage 'https://fbflipper.com/'

  app 'Flipper.app'
end
