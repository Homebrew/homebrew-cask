cask 'avidemux' do
  version '2.7.0'
  sha256 '52257cef2bf5b0a844188af920184f82c3f7cc68ccf13e902a6f8adc8fcad849'

  # sourceforge.net/avidemux was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/avidemux/avidemux/#{version}/Avidemux_#{version}_Sierra_64Bits_Qt5.dmg"
  appcast 'https://sourceforge.net/projects/avidemux/rss?path=/avidemux',
          checkpoint: '4547fdff94b92356f2597f8983c7616df1efac7209f72bb962427b888bc2185c'
  name 'Avidemux'
  homepage 'https://www.avidemux.org/'

  app "Avidemux_#{version}.app"
end
