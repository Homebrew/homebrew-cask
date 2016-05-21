cask 'avidemux' do
  version '2.6.12'
  sha256 'df95610c560b4bd4df8fbc4285c64161ddf7f987c70a6ef073b4adc5b197b1e5'

  # sourceforge.net/avidemux was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/project/avidemux/avidemux/#{version}/Avidemux_#{version}_ML_64Bits_Qt5.dmg"
  name 'Avidemux'
  homepage 'http://www.avidemux.org/'
  license :gpl

  app "Avidemux#{version.major_minor}.app"
end
