cask 'freesmug-chromium' do
  version '70.0.3538.102'
  sha256 '170b5b5dc3b7f4cc72ed3cf223126780a2d79710a1d2c58c1865b4c6ba5041af'

  # sourceforge.net/osxportableapps was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/osxportableapps/Chromium_OSX_#{version}.dmg"
  appcast 'https://sourceforge.net/projects/osxportableapps/rss?path=/Chromium'
  name 'Chromium'
  homepage 'http://www.freesmug.org/chromium'

  app 'Chromium.app'
end
