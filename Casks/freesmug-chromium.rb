cask 'freesmug-chromium' do
  version '63.0.3239.84'
  sha256 'cbb5649e109a4122b564be0bbd69143db2ed45a4a02ef09364b0bc19fda7d75a'

  # sourceforge.net/osxportableapps was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/osxportableapps/Chromium_OSX_#{version}.dmg"
  appcast 'https://sourceforge.net/projects/osxportableapps/rss?path=/Chromium',
          checkpoint: 'f607384c7713db0703e5e6785e0f0ad9e24e954712ffb17dee274bc421d0d6f5'
  name 'Chromium'
  homepage 'http://www.freesmug.org/chromium'

  app 'Chromium.app'
end
