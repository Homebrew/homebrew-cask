cask 'freesmug-chromium' do
  version '69.0.3497.92'
  sha256 '438324b5990547846eb7ccd87027527bf32047d7e7cf76826684b2a9ab752c67'

  # sourceforge.net/osxportableapps was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/osxportableapps/Chromium_OSX_#{version}.dmg"
  appcast 'https://sourceforge.net/projects/osxportableapps/rss?path=/Chromium'
  name 'Chromium'
  homepage 'http://www.freesmug.org/chromium'

  app 'Chromium.app'
end
