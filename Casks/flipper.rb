cask 'flipper' do
  version '0.21.0'
  sha256 '0d1c11189d0bd833bd5f8b96a5ffce20e7211010df81fafc821fb3b8702a64b2'

  # github.com/facebook/flipper was verified as official when first introduced to the cask
  url "https://github.com/facebook/flipper/releases/download/v#{version}/Flipper.zip"
  appcast 'https://github.com/facebook/flipper/releases.atom'
  name 'Facebook Flipper'
  name 'Sonar'
  homepage 'https://fbflipper.com/'

  app 'Flipper.app'
end
