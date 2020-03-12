cask 'flipper' do
  version '0.33.1'
  sha256 '341ce7958920d95321f20bc5e78d06da5d06e529211ee4f72ab229dc260cf82a'

  # github.com/facebook/flipper was verified as official when first introduced to the cask
  url "https://github.com/facebook/flipper/releases/download/v#{version}/Flipper-mac.zip"
  appcast 'https://github.com/facebook/flipper/releases.atom'
  name 'Facebook Flipper'
  name 'Sonar'
  homepage 'https://fbflipper.com/'

  app 'Flipper.app'
end
