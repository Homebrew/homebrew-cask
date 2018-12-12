cask 'freesmug-chromium' do
  version '71.0.3578.80'
  sha256 '0957ca27279b07450d229eb9e558690c05a1e6cf92dd7e8e728b982a7c9ac574'

  # sourceforge.net/osxportableapps was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/osxportableapps/Chromium_OSX_#{version}.dmg"
  appcast 'https://sourceforge.net/projects/osxportableapps/rss?path=/Chromium'
  name 'Chromium'
  homepage 'http://www.freesmug.org/chromium'

  app 'Chromium.app'
end
