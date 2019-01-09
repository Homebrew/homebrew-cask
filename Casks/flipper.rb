cask 'flipper' do
  version '0.13.0'
  sha256 'ade075fe8719fc9abecdd45f59d7b8571d717f472202cbe271ea5dc76eabb680'

  # github.com/facebook/flipper was verified as official when first introduced to the cask
  url "https://github.com/facebook/flipper/releases/download/v#{version}/Flipper.zip"
  appcast 'https://github.com/facebook/flipper/releases.atom'
  name 'Facebook Flipper'
  name 'Sonar'
  homepage 'https://fbflipper.com/'

  app 'Flipper.app'
end
