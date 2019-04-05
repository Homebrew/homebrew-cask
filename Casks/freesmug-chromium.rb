cask 'freesmug-chromium' do
  version '73.0.3683.86'
  sha256 '21aeb88c1f658fe2f0b820e15b3183c7e4de6f83c8c34b469e00c45f696e8650'

  # sourceforge.net/osxportableapps was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/osxportableapps/Chromium_OSX_#{version}.dmg"
  appcast 'https://sourceforge.net/projects/osxportableapps/rss?path=/Chromium'
  name 'Chromium'
  homepage 'http://www.freesmug.org/chromium'

  app 'Chromium.app'
end
