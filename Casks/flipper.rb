cask 'flipper' do
  version '0.50.0'
  sha256 '577a59095d06504c6ef4958c3e86b451f380d01da6eaef202cb8a85ba643a085'

  # github.com/facebook/flipper/ was verified as official when first introduced to the cask
  url "https://github.com/facebook/flipper/releases/download/v#{version}/Flipper-mac.zip"
  appcast 'https://github.com/facebook/flipper/releases.atom'
  name 'Facebook Flipper'
  name 'Sonar'
  homepage 'https://fbflipper.com/'

  app 'Flipper.app'
end
