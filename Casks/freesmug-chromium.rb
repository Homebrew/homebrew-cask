cask 'freesmug-chromium' do
  version '68.0.3440.106'
  sha256 '317d25d3896075b6d39330f9839e0eb986a0b0884996e39b5f316b5dc532f43f'

  # sourceforge.net/osxportableapps was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/osxportableapps/Chromium_OSX_#{version}.dmg"
  appcast 'https://sourceforge.net/projects/osxportableapps/rss?path=/Chromium'
  name 'Chromium'
  homepage 'http://www.freesmug.org/chromium'

  app 'Chromium.app'
end
