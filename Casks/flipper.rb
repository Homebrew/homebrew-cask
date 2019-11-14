cask 'flipper' do
  version '0.28.0'
  sha256 'bfe6408aff789cf6edaa5575362e0523d0e3de2280c638df4b07288d264a50c2'

  # github.com/facebook/flipper was verified as official when first introduced to the cask
  url "https://github.com/facebook/flipper/releases/download/v#{version}/Flipper-mac.zip"
  appcast 'https://github.com/facebook/flipper/releases.atom'
  name 'Facebook Flipper'
  name 'Sonar'
  homepage 'https://fbflipper.com/'

  app 'Flipper.app'
end
