cask 'freesmug-chromium' do
  version '50.0.2661.102'
  sha256 'dc47db777eda21865336c36c5d26ded0fdd9f824b38f30c00811c77d742d9901'

  # sourceforge.net/sourceforge/osxportableapps was verified as official when first introduced to the cask
  url "http://downloads.sourceforge.net/sourceforge/osxportableapps/Chromium_OSX_#{version}.dmg"
  appcast 'https://sourceforge.net/projects/osxportableapps/rss?path=/Chromium',
          checkpoint: '29135e524e31c17d147d9cb6077d323b81a26fee54f039e80ebd845614b761e8'
  name 'Chromium'
  homepage 'http://www.freesmug.org/chromium'
  license :gpl

  app 'Chromium.app'
end
