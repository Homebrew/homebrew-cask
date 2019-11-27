cask 'flipper' do
  version '0.29.1'
  sha256 '790a71bc178d42b8320bcf8377230d7751b9efd13f30bc03bcf74181ab5b4d4f'

  # github.com/facebook/flipper was verified as official when first introduced to the cask
  url "https://github.com/facebook/flipper/releases/download/v#{version}/Flipper-mac.zip"
  appcast 'https://github.com/facebook/flipper/releases.atom'
  name 'Facebook Flipper'
  name 'Sonar'
  homepage 'https://fbflipper.com/'

  app 'Flipper.app'
end
