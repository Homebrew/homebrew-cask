cask 'flipper' do
  version '0.18.0'
  sha256 '7a0f98b4c837545890c726c9f5ca4c4f1a93ffd9dd4d63191a2b683198bd190e'

  # github.com/facebook/flipper was verified as official when first introduced to the cask
  url "https://github.com/facebook/flipper/releases/download/v#{version}/Flipper.zip"
  appcast 'https://github.com/facebook/flipper/releases.atom'
  name 'Facebook Flipper'
  name 'Sonar'
  homepage 'https://fbflipper.com/'

  app 'Flipper.app'
end
