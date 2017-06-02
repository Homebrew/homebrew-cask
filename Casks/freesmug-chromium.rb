cask 'freesmug-chromium' do
  version '58.0.3029.110'
  sha256 '6d6b602aef9892d41bfea727f8cf86d0040a27d0249b4ef45cc983cbac9d3086'

  # sourceforge.net/osxportableapps was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/osxportableapps/Chromium_OSX_#{version}.dmg"
  appcast 'https://sourceforge.net/projects/osxportableapps/rss?path=/Chromium',
          checkpoint: '32d6fbca1fee4aca5f5dde5b25b8410d22d3f2c64829f3300fd47151a5c6af54'
  name 'Chromium'
  homepage 'http://www.freesmug.org/chromium'

  app 'Chromium.app'
end
