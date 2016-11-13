cask 'astrodslr-for-nikon' do
  version '1.2'
  sha256 'd7d3d35c773840ebe00a63821bcf2f925f0e66ad034ce9ee6cb3ff900d17237c'

  url "http://download.cloudmakers.eu/AstroDSLR_#{version}.dmg"
  name 'AstroDSLR for Nikon'
  homepage 'http://www.cloudmakers.eu'

  app 'AstroDSLR for Nikon.app'
end
