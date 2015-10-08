cask :v1 => 'skyfonts' do
  version '4.10.0.0'
  sha256 'a0186bdde3f1abccef35a9be32ce139bd5e61b428cf5efabaacc194a52a0d4b0'

  # skyfonts.com is the official download host per the vendor homepage
  url "http://cdn1.skyfonts.com/client/Monotype_SkyFonts_Mac64_#{version}.dmg"
  name 'SkyFonts'
  homepage 'https://www.fonts.com/web-fonts/google'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'SkyFonts.app'
end
