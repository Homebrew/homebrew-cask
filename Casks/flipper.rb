cask 'flipper' do
  version '0.7.1'
  sha256 '0ebfa13be4537c4bd05d86ebd08f65213dfc41d5aa8f7855163f6882b44c0fd8'

  # github.com/facebook/flipper was verified as official when first introduced to the cask
  url "https://github.com/facebook/flipper/releases/download/v#{version}/Flipper.zip"
  appcast 'https://github.com/facebook/flipper/releases.atom'
  name 'Facebook Flipper'
  name 'Sonar'
  homepage 'https://fbflipper.com/'

  app 'Flipper.app'
end
