cask 'freesmug-chromium' do
  version '49.0.2623.112'
  sha256 '978092b4af6cc1968234ef268275fc0a2cd3babfa3bf52efc7494a85b5a945d0'

  # sourceforge.net/sourceforge/osxportableapps was verified as official when first introduced to the cask
  url "http://downloads.sourceforge.net/sourceforge/osxportableapps/Chromium_OSX_#{version}.dmg"
  appcast 'https://sourceforge.net/projects/osxportableapps/rss?path=/Chromium',
          checkpoint: 'b295868d659f450244bdc8eb9c5d49f2b2146046adf140208d887a12a02f9fa6'
  name 'Chromium'
  homepage 'http://www.freesmug.org/chromium'
  license :gpl

  app 'Chromium.app'
end
