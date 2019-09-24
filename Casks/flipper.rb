cask 'flipper' do
  version '0.24.1'
  sha256 '67cae6af9d4ac5e5d58c618efc4548111106dcf57df8bc5ac186fcdfee3cee79'

  # github.com/facebook/flipper was verified as official when first introduced to the cask
  url "https://github.com/facebook/flipper/releases/download/v#{version}/Flipper-mac.zip"
  appcast 'https://github.com/facebook/flipper/releases.atom'
  name 'Facebook Flipper'
  name 'Sonar'
  homepage 'https://fbflipper.com/'

  app 'Flipper.app'
end
