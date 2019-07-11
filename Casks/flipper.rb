cask 'flipper' do
  version '0.23.0'
  sha256 '9415789435fd4baa52072ee6361ad7c7bf1399a9e4024dbb06c6868c3457d19e'

  # github.com/facebook/flipper was verified as official when first introduced to the cask
  url "https://github.com/facebook/flipper/releases/download/v#{version}/Flipper.zip"
  appcast 'https://github.com/facebook/flipper/releases.atom'
  name 'Facebook Flipper'
  name 'Sonar'
  homepage 'https://fbflipper.com/'

  app 'Flipper.app'
end
