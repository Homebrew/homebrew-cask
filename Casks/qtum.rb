cask 'qtum' do
  version '0.19.1'
  sha256 'dc4e543ffdf9ca5f1184d01d26157ad98566824f8875b56e65b5b27eabcc9d56'

  # github.com/qtumproject/qtum/ was verified as official when first introduced to the cask
  url "https://github.com/qtumproject/qtum/releases/download/mainnet-ignition-v#{version.major_minor_patch}/qtum-#{version}-osx-unsigned.dmg"
  appcast 'https://github.com/qtumproject/qtum/releases.atom'
  name 'Qtum'
  homepage 'https://qtum.org/'

  app 'Qtum-Qt.app'
end
