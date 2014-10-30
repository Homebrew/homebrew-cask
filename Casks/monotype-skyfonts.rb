class MonotypeSkyfonts < Cask
  version '4.6.0.0'
  sha256 '211f8f386c0ed84a19235a1cc64478c5f24d1cb0bbfb3947fa5cb5633f36484d'

  url "http://cdn1.skyfonts.com/client/Monotype_SkyFonts_Mac64_#{version}.dmg"
  homepage 'http://www.fonts.com/web-fonts/google'
  license :unknown

  app 'Monotype Skyfonts.app'
end
