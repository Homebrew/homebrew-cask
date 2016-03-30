cask 'skyfonts' do
  version '5.0.0.0'
  sha256 '937f64f4f935f95d0f2f777470f79830acafd96c647072c3e0bbda8e81af5a70'

  # skyfonts.com is the official download host per the vendor homepage
  url "http://cdn1.skyfonts.com/client/Monotype_SkyFonts_Mac64_#{version}.dmg"
  name 'SkyFonts'
  homepage 'https://www.fonts.com/web-fonts/google'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'SkyFonts.app'
end
