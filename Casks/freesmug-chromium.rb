cask 'freesmug-chromium' do
  version '51.0.2704.106'
  sha256 '842e584e084f22fe95cf01d965ba2d85fdbc746d181345503085cfafc7a8c143'

  # sourceforge.net/sourceforge/osxportableapps was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/sourceforge/osxportableapps/Chromium_OSX_#{version}.dmg"
  appcast 'https://sourceforge.net/projects/osxportableapps/rss?path=/Chromium',
          checkpoint: '5edad9b99bd2a084679025f835243a58a5e0f96fc530f995f51bca99a48b2d91'
  name 'Chromium'
  homepage 'http://www.freesmug.org/chromium'
  license :gpl

  app 'Chromium.app'
end
