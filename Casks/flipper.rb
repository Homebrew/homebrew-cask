cask 'flipper' do
  version '0.17.0'
  sha256 '81570109a92a6b90d4d5d2f5a443038b7ff5360fdccc394c676e590092b3bd47'

  # github.com/facebook/flipper was verified as official when first introduced to the cask
  url "https://github.com/facebook/flipper/releases/download/v#{version}/Flipper.zip"
  appcast 'https://github.com/facebook/flipper/releases.atom'
  name 'Facebook Flipper'
  name 'Sonar'
  homepage 'https://fbflipper.com/'

  app 'Flipper.app'
end
