cask 'freesmug-chromium' do
  version '62.0.3202.94'
  sha256 '54f5a7f27a5d97c1014bde2e0378ec25544b0cb83c6978680e5811ee1773f7ff'

  # sourceforge.net/osxportableapps was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/osxportableapps/Chromium_OSX_#{version}.dmg"
  appcast 'https://sourceforge.net/projects/osxportableapps/rss?path=/Chromium',
          checkpoint: 'd488b3877b2a989ad2d3dbeee08f3d6a218f1c35d5fbb32a0451c00dafb8b152'
  name 'Chromium'
  homepage 'http://www.freesmug.org/chromium'

  app 'Chromium.app'
end
