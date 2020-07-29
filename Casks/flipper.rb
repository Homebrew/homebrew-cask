cask 'flipper' do
  version '0.47.0'
  sha256 'e7449125301bca9fab1a0389c9d5055f686645189c912cd7e5a8bea59d1e23dc'

  # github.com/facebook/flipper/ was verified as official when first introduced to the cask
  url "https://github.com/facebook/flipper/releases/download/v#{version}/Flipper-mac.zip"
  appcast 'https://github.com/facebook/flipper/releases.atom'
  name 'Facebook Flipper'
  name 'Sonar'
  homepage 'https://fbflipper.com/'

  app 'Flipper.app'
end
