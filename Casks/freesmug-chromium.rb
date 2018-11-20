cask 'freesmug-chromium' do
  version '70.0.3538.110'
  sha256 '3b5da493f67afa576b253fc066c6bef3f0658ffd551a873f9ce832da77c6baeb'

  # sourceforge.net/osxportableapps was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/osxportableapps/Chromium_OSX_#{version}.dmg"
  appcast 'https://sourceforge.net/projects/osxportableapps/rss?path=/Chromium'
  name 'Chromium'
  homepage 'http://www.freesmug.org/chromium'

  app 'Chromium.app'
end
