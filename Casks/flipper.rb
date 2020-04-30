cask 'flipper' do
  version '0.40.0'
  sha256 '6f9e08f1bf40c147e73cc67f4a13241a90fa4e3913c247a5ddda0f97a880e7d4'

  # github.com/facebook/flipper/ was verified as official when first introduced to the cask
  url "https://github.com/facebook/flipper/releases/download/v#{version}/Flipper-mac.zip"
  appcast 'https://github.com/facebook/flipper/releases.atom'
  name 'Facebook Flipper'
  name 'Sonar'
  homepage 'https://fbflipper.com/'

  app 'Flipper.app'
end
