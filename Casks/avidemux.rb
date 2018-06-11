cask 'avidemux' do
  version '2.7.1'
  sha256 'e45507e8f4fd501061136956527f0a9492c18254547d5dec3c38dce91aea2db6'

  # sourceforge.net/avidemux was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/avidemux/avidemux/#{version}/Avidemux_#{version}_HighSierra_64Bits_Qt5.dmg"
  appcast 'https://sourceforge.net/projects/avidemux/rss?path=/avidemux',
          checkpoint: 'fefa1e1da6b3e6fc1e11852c92f68024f1fa0f70b34565e1841ef58b45b134bf'
  name 'Avidemux'
  homepage 'https://www.avidemux.org/'

  app "Avidemux_#{version}.app"
end
