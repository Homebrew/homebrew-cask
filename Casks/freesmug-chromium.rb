cask 'freesmug-chromium' do
  version '84.0.4147.89'
  sha256 '6f557c4c0aea7624b2559fbafb613f3c6827e07975d2e27613d647b41c3f94e2'

  # sourceforge.net/osxportableapps/ was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/osxportableapps/Chromium_OSX_#{version}.dmg"
  appcast 'https://sourceforge.net/projects/osxportableapps/rss?path=/Chromium'
  name 'Chromium'
  homepage 'http://www.freesmug.org/chromium'

  conflicts_with cask: [
                         'chromium',
                         'eloston-chromium',
                       ]

  app 'Chromium.app'
end
