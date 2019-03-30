cask 'flipper' do
  version '0.19.0'
  sha256 '39f3c428e7cb082d8e8cf0c959895e74b06cbb5d70f916234c6c9042a43bd06a'

  # github.com/facebook/flipper was verified as official when first introduced to the cask
  url "https://github.com/facebook/flipper/releases/download/v#{version}/Flipper.zip"
  appcast 'https://github.com/facebook/flipper/releases.atom'
  name 'Facebook Flipper'
  name 'Sonar'
  homepage 'https://fbflipper.com/'

  app 'Flipper.app'
end
