cask 'avidemux' do
  version '2.7.6'
  sha256 '91a4d9757173c261eac01a79019aed38a1185951ff2b67352e6ecbac2ea5f56f'

  # sourceforge.net/avidemux/ was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/avidemux/avidemux/#{version}/Avidemux_#{version}_Catalina_64Bits_Qt5.dmg"
  appcast 'https://sourceforge.net/projects/avidemux/rss?path=/avidemux'
  name 'Avidemux'
  homepage 'https://www.avidemux.org/'

  app "Avidemux_#{version}.app"
end
