cask 'freesmug-chromium' do
  version '56.0.2924.87'
  sha256 'a2dfe708b101831fb1d78d6d9026d3615d95f030e5a97aff1459741a97391ce2'

  # sourceforge.net/osxportableapps was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/osxportableapps/Chromium_OSX_#{version}.dmg"
  appcast 'https://sourceforge.net/projects/osxportableapps/rss?path=/Chromium',
          checkpoint: '907b6cb3ad61d53e4f5c655a624b2eeaaec5c2b58af5128bce8dda796e01f65c'
  name 'Chromium'
  homepage 'http://www.freesmug.org/chromium'

  app 'Chromium.app'
end
