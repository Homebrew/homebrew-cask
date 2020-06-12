cask 'freesmug-chromium' do
  version '83.0.4103.97'
  sha256 'a30390618fcc3f537c43bdb07c7cd993e3fa8cd5f98e3d2d8b1d3fb627c483d8'

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
