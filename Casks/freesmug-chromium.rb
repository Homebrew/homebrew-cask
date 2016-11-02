cask 'freesmug-chromium' do
  version '54.0.2840.87'
  sha256 '1dbd5fc8088c8daf2b61841708d97d1744295e36e5c637e6137e587f5cc652f0'

  # sourceforge.net/osxportableapps was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/osxportableapps/Chromium_OSX_#{version}.dmg"
  appcast 'https://sourceforge.net/projects/osxportableapps/rss?path=/Chromium',
          checkpoint: 'dd82a517f7932ab7eefa7e1abc64c7be2700f55f818ecb38a9d00ae0f28f61bb'
  name 'Chromium'
  homepage 'http://www.freesmug.org/chromium'

  app 'Chromium.app'
end
