cask 'flipper' do
  version '0.35.0'
  sha256 '0d994068aa4d5d43460cae88bb00ba9f94cfb6230955f365dcc1c83a08c225ea'

  # github.com/facebook/flipper was verified as official when first introduced to the cask
  url "https://github.com/facebook/flipper/releases/download/v#{version}/Flipper-mac.zip"
  appcast 'https://github.com/facebook/flipper/releases.atom'
  name 'Facebook Flipper'
  name 'Sonar'
  homepage 'https://fbflipper.com/'

  app 'Flipper.app'
end
