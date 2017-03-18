cask 'freesmug-chromium' do
  version '57.0.2987.110'
  sha256 '3342f3b3516eba019459a7c87111bfa464a54093dc0baaa9c44e0e298ffd4546'

  # sourceforge.net/osxportableapps was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/osxportableapps/Chromium_OSX_#{version}.dmg"
  appcast 'https://sourceforge.net/projects/osxportableapps/rss?path=/Chromium',
          checkpoint: 'd7a820050d3c3ec8f7902b319dfb20b4fd62f6d5b215640c4804a6a357dba4f4'
  name 'Chromium'
  homepage 'http://www.freesmug.org/chromium'

  app 'Chromium.app'
end
