cask 'flipper' do
  version '0.34.0'
  sha256 '09c5c9558d9d01b13936b4d80c5f7d491d36ab1b47508c373423174efe1b504c'

  # github.com/facebook/flipper was verified as official when first introduced to the cask
  url "https://github.com/facebook/flipper/releases/download/v#{version}/Flipper-mac.zip"
  appcast 'https://github.com/facebook/flipper/releases.atom'
  name 'Facebook Flipper'
  name 'Sonar'
  homepage 'https://fbflipper.com/'

  app 'Flipper.app'
end
