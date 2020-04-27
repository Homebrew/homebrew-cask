cask 'qtum' do
  version '0.19.0.1'
  sha256 'bb957b66f55173f342dd78d089e2d60c6271fda8653579d7bea6143d09869204'

  # github.com/qtumproject/qtum/ was verified as official when first introduced to the cask
  url "https://github.com/qtumproject/qtum/releases/download/mainnet-ignition-v#{version.major_minor_patch}/qtum-#{version}-osx-unsigned.dmg"
  appcast 'https://github.com/qtumproject/qtum/releases.atom'
  name 'Qtum'
  homepage 'https://qtum.org/'

  app 'Qtum-Qt.app'
end
