cask 'freesmug-chromium' do
  version '80.0.3987.116'
  sha256 '7257979a6fd92c3e34101de0be34d237557e59d496b41f3f791c7e61e51d29be'

  # sourceforge.net/osxportableapps was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/osxportableapps/Chromium_OSX_#{version}.dmg"
  appcast 'https://sourceforge.net/projects/osxportableapps/rss?path=/Chromium'
  name 'Chromium'
  homepage 'http://www.freesmug.org/chromium'

  app 'Chromium.app'
end
