cask 'flipper' do
  version '0.26.0'
  sha256 '4ac339d9c0f9e33a1a812171013afd0ba94c2ed3f733c57b59b272706c938ff6'

  # github.com/facebook/flipper was verified as official when first introduced to the cask
  url "https://github.com/facebook/flipper/releases/download/v#{version}/Flipper-mac.zip"
  appcast 'https://github.com/facebook/flipper/releases.atom'
  name 'Facebook Flipper'
  name 'Sonar'
  homepage 'https://fbflipper.com/'

  app 'Flipper.app'
end
