cask 'freesmug-chromium' do
  version '81.0.4044.138'
  sha256 'a6854b83eb8966063fa966466e99911e7e0c19a82cbcf58ad17fee5c9c458419'

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
