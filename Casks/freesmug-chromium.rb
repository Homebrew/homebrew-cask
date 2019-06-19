cask 'freesmug-chromium' do
  version '75.0.3770.100'
  sha256 '4ab6f49ca82f0d71db820e9230bb10930fb6452157a90450865f1768021e8f28'

  # sourceforge.net/osxportableapps was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/osxportableapps/Chromium_OSX_#{version}.dmg"
  appcast 'https://sourceforge.net/projects/osxportableapps/rss?path=/Chromium'
  name 'Chromium'
  homepage 'http://www.freesmug.org/chromium'

  app 'Chromium.app'
end
