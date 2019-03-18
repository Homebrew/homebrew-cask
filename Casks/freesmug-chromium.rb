cask 'freesmug-chromium' do
  version '73.0.3683.75'
  sha256 '6bbe697f08a9f4bfde754e6873f18ff984778d05862a259b2a27c98ebb4d8a98'

  # sourceforge.net/osxportableapps was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/osxportableapps/Chromium_OSX_#{version}.dmg"
  appcast 'https://sourceforge.net/projects/osxportableapps/rss?path=/Chromium'
  name 'Chromium'
  homepage 'http://www.freesmug.org/chromium'

  app 'Chromium.app'
end
