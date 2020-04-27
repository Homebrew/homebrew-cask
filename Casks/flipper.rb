cask 'flipper' do
  version '0.39.0'
  sha256 '79a1be3f7bd95b22d1f2fb05be1cd88991001607e860b1d409cc8f5bd471d1f2'

  # github.com/facebook/flipper/ was verified as official when first introduced to the cask
  url "https://github.com/facebook/flipper/releases/download/v#{version}/Flipper-mac.zip"
  appcast 'https://github.com/facebook/flipper/releases.atom'
  name 'Facebook Flipper'
  name 'Sonar'
  homepage 'https://fbflipper.com/'

  app 'Flipper.app'
end
