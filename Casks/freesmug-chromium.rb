cask 'freesmug-chromium' do
  version '83.0.4103.61'
  sha256 '6a23b3218cd80f662676e68b8eea749993de8bd383aa483a5d10ca4ef2077fc0'

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
