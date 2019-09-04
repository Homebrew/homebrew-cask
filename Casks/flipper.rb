cask 'flipper' do
  version '0.23.5'
  sha256 '42f71ac5f82a642eeb2e08f57de46c199f0b6219e4e9f501cd15805ac5557b5c'

  # github.com/facebook/flipper was verified as official when first introduced to the cask
  url "https://github.com/facebook/flipper/releases/download/v#{version}/Flipper-mac.zip"
  appcast 'https://github.com/facebook/flipper/releases.atom'
  name 'Facebook Flipper'
  name 'Sonar'
  homepage 'https://fbflipper.com/'

  app 'Flipper.app'
end
