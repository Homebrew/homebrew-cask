cask 'flipper' do
  version '0.32.2'
  sha256 'f96e4ecf9a9330b6dddd07c7439a7fd065e55a205bb09039c3b210a6ea6fc94c'

  # github.com/facebook/flipper was verified as official when first introduced to the cask
  url "https://github.com/facebook/flipper/releases/download/v#{version}/Flipper-mac.zip"
  appcast 'https://github.com/facebook/flipper/releases.atom'
  name 'Facebook Flipper'
  name 'Sonar'
  homepage 'https://fbflipper.com/'

  app 'Flipper.app'
end
