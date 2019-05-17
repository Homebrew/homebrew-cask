cask 'freesmug-chromium' do
  version '74.0.3729.157'
  sha256 '0800994c7e54c735ad7302373584a8b31cb829942bd5d11552f84b1e86d3f87c'

  # sourceforge.net/osxportableapps was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/osxportableapps/Chromium_OSX_#{version}.dmg"
  appcast 'https://sourceforge.net/projects/osxportableapps/rss?path=/Chromium'
  name 'Chromium'
  homepage 'http://www.freesmug.org/chromium'

  app 'Chromium.app'
end
