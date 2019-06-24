cask 'flipper' do
  version '0.22.0'
  sha256 '54f09654973d3b7c4aada1f6f6c1af6a24c4416f9c23c0172ad57658c8a60132'

  # github.com/facebook/flipper was verified as official when first introduced to the cask
  url "https://github.com/facebook/flipper/releases/download/v#{version}/Flipper.zip"
  appcast 'https://github.com/facebook/flipper/releases.atom'
  name 'Facebook Flipper'
  name 'Sonar'
  homepage 'https://fbflipper.com/'

  app 'Flipper.app'
end
