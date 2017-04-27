cask 'freesmug-chromium' do
  version '58.0.3029.81'
  sha256 '3dc87ce8fd91d589bb7f3ab3d6e2458fd92806f2086f609fa214411d0217a68b'

  # sourceforge.net/osxportableapps was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/osxportableapps/Chromium_OSX_#{version}.dmg"
  appcast 'https://sourceforge.net/projects/osxportableapps/rss?path=/Chromium',
          checkpoint: '553a66d99cfce3b6dc0010ff231c4fdba91b188cb99a5ed609e8bc039134b84e'
  name 'Chromium'
  homepage 'http://www.freesmug.org/chromium'

  app 'Chromium.app'
end
