cask :v1 => 'monotype-skyfonts' do
  version '4.7.1.0'
  sha256 '9a473e2b2d89d62b4fc2d9d3400a064636c210c62dfd935dd26e693a4c5c5bad'

  # skyfonts.com is the official download host per the vendor homepage
  url "http://cdn1.skyfonts.com/client/Monotype_SkyFonts_Mac64_#{version}.dmg"
  name 'Monotype SkyFonts'
  homepage 'https://www.fonts.com/web-fonts/google'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Monotype Skyfonts.app'
end
