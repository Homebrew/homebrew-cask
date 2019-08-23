cask 'flipper' do
  version '0.23.4'
  sha256 'e0b2ac86c560252a062f72e7e138135dc6d4090f7724e1729f78fcde62934281'

  # github.com/facebook/flipper was verified as official when first introduced to the cask
  url "https://github.com/facebook/flipper/releases/download/v#{version}/Flipper.zip"
  appcast 'https://github.com/facebook/flipper/releases.atom'
  name 'Facebook Flipper'
  name 'Sonar'
  homepage 'https://fbflipper.com/'

  app 'Flipper.app'
end
