cask 'freesmug-chromium' do
  version '48.0.2564.109'
  sha256 '4c3ebeaacfee5afdc9713ef479c81526c256f619b08b0d682bb9bcf20aac561b'

  # sourceforge.net/sourceforge/osxportableapps was verified as official when first introduced to the cask
  url "http://downloads.sourceforge.net/sourceforge/osxportableapps/Chromium_OSX_#{version}.dmg"
  appcast 'https://sourceforge.net/projects/osxportableapps/rss?path=/Chromium',
          checkpoint: 'bb3df96c9191093031b88c2420e079c62802780a1209f622b9ce84d3bd40b6f6'
  name 'Chromium'
  homepage 'http://www.freesmug.org/chromium'
  license :gpl

  app 'Chromium.app'
end
