cask 'flipper' do
  version '0.16.2'
  sha256 'e4920982b3f318c31858959dd7cf3e99428767cc19ba3f7cdbcebbffcaff6cc7'

  # github.com/facebook/flipper was verified as official when first introduced to the cask
  url "https://github.com/facebook/flipper/releases/download/v#{version}/Flipper.zip"
  appcast 'https://github.com/facebook/flipper/releases.atom'
  name 'Facebook Flipper'
  name 'Sonar'
  homepage 'https://fbflipper.com/'

  app 'Flipper.app'
end
