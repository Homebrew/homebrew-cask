cask 'avidemux' do
  version '2.6.12'
  sha256 'df95610c560b4bd4df8fbc4285c64161ddf7f987c70a6ef073b4adc5b197b1e5'

  # sourceforge.net/avidemux was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/avidemux/avidemux/#{version}/Avidemux_#{version}_ML_64Bits_Qt5.dmg"
  appcast 'https://sourceforge.net/projects/avidemux/rss?path=/avidemux',
          checkpoint: 'e6aa5bb57e6809631178c37bf241d59932eb3c87d904fee0722117968489e500'
  name 'Avidemux'
  homepage 'https://www.avidemux.org/'
  license :gpl

  app "Avidemux#{version.major_minor}.app"
end
