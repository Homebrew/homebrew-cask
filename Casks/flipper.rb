cask 'flipper' do
  version '0.45.0'
  sha256 '533b35691d99ecb441f8da9a2609911c2e7b57ab6d13b1ac1d4e999e07e89461'

  # github.com/facebook/flipper/ was verified as official when first introduced to the cask
  url "https://github.com/facebook/flipper/releases/download/v#{version}/Flipper-mac.zip"
  appcast 'https://github.com/facebook/flipper/releases.atom'
  name 'Facebook Flipper'
  name 'Sonar'
  homepage 'https://fbflipper.com/'

  app 'Flipper.app'
end
