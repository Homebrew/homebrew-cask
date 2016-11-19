cask 'avidemux' do
  version '2.6.15'
  sha256 'b646cb9ceff19c96e771550ffd070dc8834427755ac962aad90efb11652c4667'

  # sourceforge.net/avidemux was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/avidemux/avidemux/#{version}/Avidemux_#{version}_Sierra_64Bits_Qt5.dmg"
  appcast 'https://sourceforge.net/projects/avidemux/rss?path=/avidemux',
          checkpoint: '37287b61c6efcc8ddea788b23cb0dd53422824ebb2d7d3ea68a386e46170bcc9'
  name 'Avidemux'
  homepage 'https://www.avidemux.org/'

  app "Avidemux#{version.major_minor}.app"
end
