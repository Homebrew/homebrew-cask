cask 'flipper' do
  version '0.15.0'
  sha256 '59c889f8e6c61ec7755db553541fd0a7ce4dac23eb805ef0eed597b4706d8d0d'

  # github.com/facebook/flipper was verified as official when first introduced to the cask
  url "https://github.com/facebook/flipper/releases/download/v#{version}/Flipper.zip"
  appcast 'https://github.com/facebook/flipper/releases.atom'
  name 'Facebook Flipper'
  name 'Sonar'
  homepage 'https://fbflipper.com/'

  app 'Flipper.app'
end
