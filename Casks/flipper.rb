cask 'flipper' do
  version '0.31.1'
  sha256 '79965edf6f02f2858ac6fbd0376c35c597092c9dd8e5757e6d1b9f68dbadd53c'

  # github.com/facebook/flipper was verified as official when first introduced to the cask
  url "https://github.com/facebook/flipper/releases/download/v#{version}/Flipper-mac.zip"
  appcast 'https://github.com/facebook/flipper/releases.atom'
  name 'Facebook Flipper'
  name 'Sonar'
  homepage 'https://fbflipper.com/'

  app 'Flipper.app'
end
