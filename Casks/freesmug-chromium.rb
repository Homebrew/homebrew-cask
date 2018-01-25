cask 'freesmug-chromium' do
  version '64.0.3282.119'
  sha256 '335202815bb2892d874c29e96db3b3bbd653ad0d9b0ed79ba9b1a10a637b0289'

  # sourceforge.net/osxportableapps was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/osxportableapps/Chromium_OSX_#{version}.dmg"
  appcast 'https://sourceforge.net/projects/osxportableapps/rss?path=/Chromium',
          checkpoint: '6702676bac3aab33ca36724704303960c2dca3819eeb6ac998e9c197cd48281d'
  name 'Chromium'
  homepage 'http://www.freesmug.org/chromium'

  app 'Chromium.app'
end
