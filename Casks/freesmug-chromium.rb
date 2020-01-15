cask 'freesmug-chromium' do
  version '79.0.3945.79'
  sha256 '991a8d939450733d1fe3adaae421f7a086057d394c8a4e8dd31d654d7d30b816'

  # sourceforge.net/osxportableapps was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/osxportableapps/Chromium_OSX_#{version}.dmg"
  appcast 'https://sourceforge.net/projects/osxportableapps/rss?path=/Chromium'
  name 'Chromium'
  homepage 'http://www.freesmug.org/chromium'

  app 'Chromium.app'
end
