cask 'flipper' do
  version '0.14.1'
  sha256 '48096999eff07f5834d29e7f8837ddd630124f88cd85b8d25d3d5fcf9a94a0de'

  # github.com/facebook/flipper was verified as official when first introduced to the cask
  url "https://github.com/facebook/flipper/releases/download/v#{version}/Flipper.zip"
  appcast 'https://github.com/facebook/flipper/releases.atom'
  name 'Facebook Flipper'
  name 'Sonar'
  homepage 'https://fbflipper.com/'

  app 'Flipper.app'
end
