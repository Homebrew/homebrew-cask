cask 'freesmug-chromium' do
  version '67.0.3396.62'
  sha256 '6f4809b415cc02991c5c98d250d88fd57c0bbb47730f3da87731cf19af610ab9'

  # sourceforge.net/osxportableapps was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/osxportableapps/Chromium_OSX_#{version}.dmg"
  appcast 'https://sourceforge.net/projects/osxportableapps/rss?path=/Chromium',
          checkpoint: 'd585d2eff3b37f5696907d0931971299171a60dc5b46787878265ae6f88cbf40'
  name 'Chromium'
  homepage 'http://www.freesmug.org/chromium'

  app 'Chromium.app'
end
