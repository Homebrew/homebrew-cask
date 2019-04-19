cask 'flipper' do
  version '0.20.0'
  sha256 'e8ccbbb810fee24dbf77960374a4bd391dd722f36a1dec95684f6224033b72e2'

  # github.com/facebook/flipper was verified as official when first introduced to the cask
  url "https://github.com/facebook/flipper/releases/download/v#{version}/Flipper.zip"
  appcast 'https://github.com/facebook/flipper/releases.atom'
  name 'Facebook Flipper'
  name 'Sonar'
  homepage 'https://fbflipper.com/'

  app 'Flipper.app'
end
