cask 'freesmug-chromium' do
  version '49.0.2623.87'
  sha256 '7264791b614edf6ab7c029478bf84fde4536e1a5dcca96a9fa7c02582582f7ed'

  # sourceforge.net/sourceforge/osxportableapps was verified as official when first introduced to the cask
  url "http://downloads.sourceforge.net/sourceforge/osxportableapps/Chromium_OSX_#{version}.dmg"
  appcast 'https://sourceforge.net/projects/osxportableapps/rss?path=/Chromium',
          checkpoint: 'b2a7e8d17ff55918f2f08bc8446b8decb0f598bc7da7f2437c8ac1f6bc024afa'
  name 'Chromium'
  homepage 'http://www.freesmug.org/chromium'
  license :gpl

  app 'Chromium.app'
end
