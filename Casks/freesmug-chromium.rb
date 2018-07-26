cask 'freesmug-chromium' do
  version '68.0.3440.75'
  sha256 '228b32a009710f1fb904406bcbace5d2963cdc67988d2d77d05bbdace498034e'

  # sourceforge.net/osxportableapps was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/osxportableapps/Chromium_OSX_#{version}.dmg"
  appcast 'https://sourceforge.net/projects/osxportableapps/rss?path=/Chromium'
  name 'Chromium'
  homepage 'http://www.freesmug.org/chromium'

  app 'Chromium.app'
end
