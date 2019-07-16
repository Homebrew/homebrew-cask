cask 'avidemux' do
  version '2.7.2'
  sha256 '0418e55697da2a362fab3f62c8efd3ebf16ba627b40152fd5cf19126f83ff54d'

  # sourceforge.net/avidemux was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/avidemux/avidemux/#{version}/Avidemux_#{version}_Mojave_64Bits_Qt5.dmg"
  appcast 'https://sourceforge.net/projects/avidemux/rss?path=/avidemux'
  name 'Avidemux'
  homepage 'https://www.avidemux.org/'

  app "Avidemux_#{version}.app"
end
