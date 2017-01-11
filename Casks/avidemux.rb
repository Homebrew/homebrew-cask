cask 'avidemux' do
  version '2.6.18'
  sha256 'bc4c1251103236a719a7d56a912bfffec4e333b4d625fc9037cd0c8220cb22c5'

  # sourceforge.net/avidemux was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/avidemux/avidemux/#{version}/Avidemux_#{version}_Sierra_64Bits_Qt5.dmg"
  appcast 'https://sourceforge.net/projects/avidemux/rss?path=/avidemux',
          checkpoint: '2125908587baf2bd9ee56e40a3882befcb56d69057f9b14bc2f3a3196da31312'
  name 'Avidemux'
  homepage 'https://www.avidemux.org/'

  app "Avidemux#{version.major_minor}.app"
end
