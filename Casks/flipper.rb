cask 'flipper' do
  version '0.30.1'
  sha256 '8cfc9fc8abc4edb205db581c8d8b987bba633baefe0e675ef465d7ea8ded1c61'

  # github.com/facebook/flipper was verified as official when first introduced to the cask
  url "https://github.com/facebook/flipper/releases/download/v#{version}/Flipper-mac.zip"
  appcast 'https://github.com/facebook/flipper/releases.atom'
  name 'Facebook Flipper'
  name 'Sonar'
  homepage 'https://fbflipper.com/'

  app 'Flipper.app'
end
