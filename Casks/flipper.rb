cask 'flipper' do
  version '0.30.2'
  sha256 '426e0bfe65bca9f284b7543ce540ce87ce6afa67fe11c134ed5c9eacc13a13db'

  # github.com/facebook/flipper was verified as official when first introduced to the cask
  url "https://github.com/facebook/flipper/releases/download/v#{version}/Flipper-mac.zip"
  appcast 'https://github.com/facebook/flipper/releases.atom'
  name 'Facebook Flipper'
  name 'Sonar'
  homepage 'https://fbflipper.com/'

  app 'Flipper.app'
end
