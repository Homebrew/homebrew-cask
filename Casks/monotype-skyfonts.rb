cask :v1 => 'monotype-skyfonts' do
  version '4.6.0.0'
  sha256 '211f8f386c0ed84a19235a1cc64478c5f24d1cb0bbfb3947fa5cb5633f36484d'

  # skyfonts.com is the official download host per the vendor homepage
  url "http://cdn1.skyfonts.com/client/Monotype_SkyFonts_Mac64_#{version}.dmg"
  homepage 'http://www.fonts.com/web-fonts/google'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Monotype Skyfonts.app'
end
