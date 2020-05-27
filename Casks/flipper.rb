cask 'flipper' do
  version '0.44.0'
  sha256 '56dc299cea6fa838e2e1fb03c8163f18679371ddbd1d54d0385030356d9bd980'

  # github.com/facebook/flipper/ was verified as official when first introduced to the cask
  url "https://github.com/facebook/flipper/releases/download/v#{version}/Flipper-mac.zip"
  appcast 'https://github.com/facebook/flipper/releases.atom'
  name 'Facebook Flipper'
  name 'Sonar'
  homepage 'https://fbflipper.com/'

  app 'Flipper.app'
end
