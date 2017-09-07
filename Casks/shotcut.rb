cask 'shotcut' do
  version '17.08.01'
  sha256 '5bf3b5c642a01791864d9187ea1094af5b4a2672c285cfb2167347d2df4c4dc7'

  # github.com/mltframework/shotcut was verified as official when first introduced to the cask
  url "https://github.com/mltframework/shotcut/releases/download/v#{version.major_minor}/shotcut-osx-x86_64-#{version.no_dots}.dmg"
  appcast 'https://github.com/mltframework/shotcut/releases.atom',
          checkpoint: '6e6baee0986b94f81f862cbf0d057c43799241d2ea1010c6bda6ce9f5a7803bd'
  name 'Shotcut'
  homepage 'https://www.shotcut.org/'

  app 'Shotcut.app'
end
