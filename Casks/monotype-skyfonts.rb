cask :v1 => 'monotype-skyfonts' do
  version '4.6.0.0'
  sha256 '211f8f386c0ed84a19235a1cc64478c5f24d1cb0bbfb3947fa5cb5633f36484d'

  url "http://cdn1.skyfonts.com/client/Monotype_SkyFonts_Mac64_#{version}.dmg"
  homepage 'http://www.fonts.com/web-fonts/google'
  license :unknown    # todo: improve this machine-generated value

  app 'Monotype Skyfonts.app'
end
