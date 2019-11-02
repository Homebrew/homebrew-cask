cask 'flipper' do
  version '0.27.0'
  sha256 'c20bfaf56a19bccfe5cf4ccb32fbd1e02a1da5a3eb109dd19757bcecc06b849e'

  # github.com/facebook/flipper was verified as official when first introduced to the cask
  url "https://github.com/facebook/flipper/releases/download/v#{version}/Flipper-mac.zip"
  appcast 'https://github.com/facebook/flipper/releases.atom'
  name 'Facebook Flipper'
  name 'Sonar'
  homepage 'https://fbflipper.com/'

  app 'Flipper.app'
end
