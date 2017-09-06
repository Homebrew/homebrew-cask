cask 'freesmug-chromium' do
  version '61.0.3163.79'
  sha256 'deba35e6ee962a9a772615084ede3f51b8403328f3c8a442568adf3c8e538e67'

  # sourceforge.net/osxportableapps was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/osxportableapps/Chromium_OSX_#{version}.dmg"
  appcast 'https://sourceforge.net/projects/osxportableapps/rss?path=/Chromium',
          checkpoint: '54def49cdfb89caad24773d89a855264dacb4e153f3e27d8f4b5f83f82142f5c'
  name 'Chromium'
  homepage 'http://www.freesmug.org/chromium'

  app 'Chromium.app'
end
