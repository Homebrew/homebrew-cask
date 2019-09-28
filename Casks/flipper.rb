cask 'flipper' do
  version '0.25.0'
  sha256 '1d5d87ca3628d116970b6fc62f632fd6a32c8fab277052b9e3f98c8cc4989fd9'

  # github.com/facebook/flipper was verified as official when first introduced to the cask
  url "https://github.com/facebook/flipper/releases/download/v#{version}/Flipper-mac.zip"
  appcast 'https://github.com/facebook/flipper/releases.atom'
  name 'Facebook Flipper'
  name 'Sonar'
  homepage 'https://fbflipper.com/'

  app 'Flipper.app'
end
