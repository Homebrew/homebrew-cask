cask 'freesmug-chromium' do
  version '77.0.3865.75'
  sha256 '39fd54106e20f10660db4620808d08018f7a6ba9438edc86d3e789490832f8ca'

  # sourceforge.net/osxportableapps was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/osxportableapps/Chromium_OSX_#{version}.dmg"
  appcast 'https://sourceforge.net/projects/osxportableapps/rss?path=/Chromium'
  name 'Chromium'
  homepage 'http://www.freesmug.org/chromium'

  app 'Chromium.app'
end
