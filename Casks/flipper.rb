cask 'flipper' do
  version '0.14.2'
  sha256 '3568a95b58e9dcb6643dd715c34d773ee5be5a9a7d9309d9af74f1c0168b247a'

  # github.com/facebook/flipper was verified as official when first introduced to the cask
  url "https://github.com/facebook/flipper/releases/download/v#{version}/Flipper.zip"
  appcast 'https://github.com/facebook/flipper/releases.atom'
  name 'Facebook Flipper'
  name 'Sonar'
  homepage 'https://fbflipper.com/'

  app 'Flipper.app'
end
