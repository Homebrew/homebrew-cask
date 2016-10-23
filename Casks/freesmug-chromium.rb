cask 'freesmug-chromium' do
  version '54.0.2840.71'
  sha256 'f64cf586d017d737288e29556ccbf6c69d8002fcfdf96e0d48a3a981111e4f59'

  # sourceforge.net/osxportableapps was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/osxportableapps/Chromium_OSX_#{version}.dmg"
  appcast 'https://sourceforge.net/projects/osxportableapps/rss?path=/Chromium',
          checkpoint: '576ba2caa829117144546742832fe469060360277be0a392f8cac6656ae144ee'
  name 'Chromium'
  homepage 'http://www.freesmug.org/chromium'

  app 'Chromium.app'
end
