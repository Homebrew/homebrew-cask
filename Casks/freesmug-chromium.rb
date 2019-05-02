cask 'freesmug-chromium' do
  version '74.0.3729.131'
  sha256 '171f8011e7ae6b938a9e7300aabf9392bdf189a6c2085d962754dd3911a4b2b4'

  # sourceforge.net/osxportableapps was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/osxportableapps/Chromium_OSX_#{version}.dmg"
  appcast 'https://sourceforge.net/projects/osxportableapps/rss?path=/Chromium'
  name 'Chromium'
  homepage 'http://www.freesmug.org/chromium'

  app 'Chromium.app'
end
