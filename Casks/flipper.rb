cask 'flipper' do
  version '0.43.0'
  sha256 '73c11edd7f0e1553350714090d722c94e3bfabcb0174fea7a81809d0a1d5c5bc'

  # github.com/facebook/flipper/ was verified as official when first introduced to the cask
  url "https://github.com/facebook/flipper/releases/download/v#{version}/Flipper-mac.zip"
  appcast 'https://github.com/facebook/flipper/releases.atom'
  name 'Facebook Flipper'
  name 'Sonar'
  homepage 'https://fbflipper.com/'

  app 'Flipper.app'
end
