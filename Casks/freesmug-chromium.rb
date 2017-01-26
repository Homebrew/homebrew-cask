cask 'freesmug-chromium' do
  version '56.0.2924.76'
  sha256 '80b09a585fe5d0c9a8edce2ed188c4413e360531d7da70c28912a4a9ac1b2e20'

  # sourceforge.net/osxportableapps was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/osxportableapps/Chromium_OSX_#{version}.dmg"
  appcast 'https://sourceforge.net/projects/osxportableapps/rss?path=/Chromium',
          checkpoint: 'ce80c465d5113fa40eca3f1529f53a509a7124b2bb7984f364f5e87a3ac6f503'
  name 'Chromium'
  homepage 'http://www.freesmug.org/chromium'

  app 'Chromium.app'
end
