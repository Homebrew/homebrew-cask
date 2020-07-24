cask 'flipper' do
  version '0.51.0'
  sha256 '223330fd1c8e8666fa3e6b678096839b22ae8f3411e95b46cfa7d0a67a613c82'

  # github.com/facebook/flipper/ was verified as official when first introduced to the cask
  url "https://github.com/facebook/flipper/releases/download/v#{version}/Flipper-mac.zip"
  appcast 'https://github.com/facebook/flipper/releases.atom'
  name 'Facebook Flipper'
  name 'Sonar'
  homepage 'https://fbflipper.com/'

  app 'Flipper.app'
end
