cask 'flipper' do
  version '0.29.0'
  sha256 'f1d82275fca10d7debce818e0ee90a733e2f7ad39c3eaf5cf2464bf077be7ec6'

  # github.com/facebook/flipper was verified as official when first introduced to the cask
  url "https://github.com/facebook/flipper/releases/download/v#{version}/Flipper-mac.zip"
  appcast 'https://github.com/facebook/flipper/releases.atom'
  name 'Facebook Flipper'
  name 'Sonar'
  homepage 'https://fbflipper.com/'

  app 'Flipper.app'
end
