cask 'freesmug-chromium' do
  version '51.0.2704.63'
  sha256 '9c7978ac31bbf1b08d293d49e5b965d32a8c0fd54ee9e77ab63653590faca9ec'

  # sourceforge.net/sourceforge/osxportableapps was verified as official when first introduced to the cask
  url "http://downloads.sourceforge.net/sourceforge/osxportableapps/Chromium_OSX_#{version}.dmg"
  appcast 'https://sourceforge.net/projects/osxportableapps/rss?path=/Chromium',
          checkpoint: 'afae03dbe3c708801678ccb390cd13ff70f89e87104fc52cf6ac14b4c8c44d25'
  name 'Chromium'
  homepage 'http://www.freesmug.org/chromium'
  license :gpl

  app 'Chromium.app'
end
