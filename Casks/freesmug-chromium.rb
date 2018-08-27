cask 'freesmug-chromium' do
  version '68.0.3440.84'
  sha256 '7a4a27a52c12a1fe6b88193d0af1a1235262016b219ac9389db738eabbfb6bff'

  # sourceforge.net/osxportableapps was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/osxportableapps/Chromium_OSX_#{version}.dmg"
  appcast 'https://sourceforge.net/projects/osxportableapps/rss?path=/Chromium'
  name 'Chromium'
  homepage 'http://www.freesmug.org/chromium'

  app 'Chromium.app'
end
