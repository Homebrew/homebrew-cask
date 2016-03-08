cask 'avidemux' do
  version '2.6.10'
  sha256 '25b8dec3474b9e6a5907b19643e0052e2cda5d1029191b20cf8fda43574a6a0f'

  # sourceforge.net/avidemux was verified as official when first introduced to the cask
  url "http://downloads.sourceforge.net/avidemux/Avidemux_#{version}_64bits_Qt4.dmg"
  name 'Avidemux'
  homepage 'http://www.avidemux.org/'
  license :gpl

  app "Avidemux#{version.major_minor}.app"
end
