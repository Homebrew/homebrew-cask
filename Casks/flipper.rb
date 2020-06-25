cask 'flipper' do
  version '0.48.0'
  sha256 '45f28ed44c30252105bc598a7adae1ca0fd0a4b2c4ec1b8f3f0515cbed03372b'

  # github.com/facebook/flipper/ was verified as official when first introduced to the cask
  url "https://github.com/facebook/flipper/releases/download/v#{version}/Flipper-mac.zip"
  appcast 'https://github.com/facebook/flipper/releases.atom'
  name 'Facebook Flipper'
  name 'Sonar'
  homepage 'https://fbflipper.com/'

  app 'Flipper.app'
end
