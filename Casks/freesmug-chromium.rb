cask 'freesmug-chromium' do
  version '77.0.3865.90'
  sha256 'c75f726f73bc3acbb6abfb9f1445bb2df0ba6dfb840f9a5fe85042eac4299100'

  # sourceforge.net/osxportableapps was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/osxportableapps/Chromium_OSX_#{version}.dmg"
  appcast 'https://sourceforge.net/projects/osxportableapps/rss?path=/Chromium'
  name 'Chromium'
  homepage 'http://www.freesmug.org/chromium'

  app 'Chromium.app'
end
