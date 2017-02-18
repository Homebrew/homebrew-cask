cask 'mt32emu' do
  version '2.0.0'
  sha256 'b0a8434a6de660725723bd822c00a2bbb24c06ee9f2fd994961fa3dbb1b1bbd1'

  url "https://downloads.sourceforge.net/munt/munt/#{version}/OS%20X/MT32Emu-qt-1.4.0.dmg"
  appcast 'https://sourceforge.net/projects/munt/rss?path=/munt',
          checkpoint: 'bec1a2eb6dd50e93a10a8f1e479860531cb1e61f7cd8f55a2992c774a995833c'
  name 'MT32Emu'
  homepage 'https://sourceforge.net/projects/munt/'

  app 'MT32Emu.app'
end
