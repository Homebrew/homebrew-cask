cask 'freesmug-chromium' do
  version '74.0.3729.169'
  sha256 'd70c12c3063517144ef1fa95b0e479c1c7789fb2ca898a91c50870a10f7b4005'

  # sourceforge.net/osxportableapps was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/osxportableapps/Chromium_OSX_#{version}.dmg"
  appcast 'https://sourceforge.net/projects/osxportableapps/rss?path=/Chromium'
  name 'Chromium'
  homepage 'http://www.freesmug.org/chromium'

  app 'Chromium.app'
end
