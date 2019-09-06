cask 'flipper' do
  version '0.23.6'
  sha256 '7fec4855abc8288e3bbf9e4fe7709cdfaae54476a02d6c4a879a5ca0056f7674'

  # github.com/facebook/flipper was verified as official when first introduced to the cask
  url "https://github.com/facebook/flipper/releases/download/v#{version}/Flipper-mac.zip"
  appcast 'https://github.com/facebook/flipper/releases.atom'
  name 'Facebook Flipper'
  name 'Sonar'
  homepage 'https://fbflipper.com/'

  app 'Flipper.app'
end
