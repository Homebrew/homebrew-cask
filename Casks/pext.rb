cask 'pext' do
  version '0.29'
  sha256 '858f0ee1686f606629c0d0253c7f69165dbc621b49e63487d7f47c721c6bd28b'

  # github.com/Pext/Pext was verified as official when first introduced to the cask
  url "https://github.com/Pext/Pext/releases/download/v#{version}/Pext-#{version}.dmg"
  appcast 'https://github.com/Pext/Pext/releases.atom'
  name 'Pext'
  homepage 'https://pext.io/'

  app 'Pext.app'
end
