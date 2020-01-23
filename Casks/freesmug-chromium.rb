cask 'freesmug-chromium' do
  version '79.0.3945.130'
  sha256 '4117bb1e6be7238c4742e81213bfa7e2b651890d1124ebcb73131b6e9df30aa3'

  # sourceforge.net/osxportableapps was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/osxportableapps/Chromium_OSX_#{version}.dmg"
  appcast 'https://sourceforge.net/projects/osxportableapps/rss?path=/Chromium'
  name 'Chromium'
  homepage 'http://www.freesmug.org/chromium'

  app 'Chromium.app'
end
