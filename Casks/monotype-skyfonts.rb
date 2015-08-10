cask :v1 => 'monotype-skyfonts' do
  version '4.9.0.0'
  sha256 '0e6982d6fb27b3570fe529a9c055bc486ff995dbd72d21c6c0999208839f7456'

  # skyfonts.com is the official download host per the vendor homepage
  url "http://cdn1.skyfonts.com/client/Monotype_SkyFonts_Mac64_#{version}.dmg"
  name 'Monotype SkyFonts'
  homepage 'https://www.fonts.com/web-fonts/google'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Monotype Skyfonts.app'
end
