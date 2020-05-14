cask 'flipper' do
  version '0.42.0'
  sha256 '3db7d206b4b7d02695cceebf3f1acccbf3eb2d099edd0374abfafffa6c15a021'

  # github.com/facebook/flipper/ was verified as official when first introduced to the cask
  url "https://github.com/facebook/flipper/releases/download/v#{version}/Flipper-mac.zip"
  appcast 'https://github.com/facebook/flipper/releases.atom'
  name 'Facebook Flipper'
  name 'Sonar'
  homepage 'https://fbflipper.com/'

  app 'Flipper.app'
end
