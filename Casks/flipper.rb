cask 'flipper' do
  version '0.17.1'
  sha256 'adde4f8605f0c3e3f026b955dce16a9cf547b5b4b95ad4c81d4f81701cf9c880'

  # github.com/facebook/flipper was verified as official when first introduced to the cask
  url "https://github.com/facebook/flipper/releases/download/v#{version}/Flipper.zip"
  appcast 'https://github.com/facebook/flipper/releases.atom'
  name 'Facebook Flipper'
  name 'Sonar'
  homepage 'https://fbflipper.com/'

  app 'Flipper.app'
end
