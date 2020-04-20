cask 'avidemux' do
  version '2.7.4'
  sha256 'a5c5028ecc954b6658b4c0e6b04c1c186c42a12530e66a5379f51fe7a3ebfcd8'

  # sourceforge.net/avidemux/ was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/avidemux/avidemux/#{version}/Avidemux_#{version}_Mojava_64Bits_Qt5.dmg"
  appcast 'https://sourceforge.net/projects/avidemux/rss?path=/avidemux'
  name 'Avidemux'
  homepage 'https://www.avidemux.org/'

  app "Avidemux_#{version}.app"
end
