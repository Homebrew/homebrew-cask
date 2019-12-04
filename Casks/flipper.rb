cask 'flipper' do
  version '0.30.0'
  sha256 '1a94f98a4e8a7744f148e105f3a19693e327a2bc63a371948bbb17bd6223be21'

  # github.com/facebook/flipper was verified as official when first introduced to the cask
  url "https://github.com/facebook/flipper/releases/download/v#{version}/Flipper-mac.zip"
  appcast 'https://github.com/facebook/flipper/releases.atom'
  name 'Facebook Flipper'
  name 'Sonar'
  homepage 'https://fbflipper.com/'

  app 'Flipper.app'
end
