cask 'flipper' do
  version '0.49.0'
  sha256 '185b2972ef457e0f627c44178d33cc8e02679fa7e1948a24495d90d9855c07a7'

  # github.com/facebook/flipper/ was verified as official when first introduced to the cask
  url "https://github.com/facebook/flipper/releases/download/v#{version}/Flipper-mac.zip"
  appcast 'https://github.com/facebook/flipper/releases.atom'
  name 'Facebook Flipper'
  name 'Sonar'
  homepage 'https://fbflipper.com/'

  app 'Flipper.app'
end
