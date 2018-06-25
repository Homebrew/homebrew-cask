cask 'freesmug-chromium' do
  version '67.0.3396.87'
  sha256 'ca36d90f76ee40b6c236c2e2f1aa2d988645d66deda753b406bd4eef6fa1ce20'

  # sourceforge.net/osxportableapps was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/osxportableapps/Chromium_OSX_#{version}.dmg"
  appcast 'https://sourceforge.net/projects/osxportableapps/rss?path=/Chromium'
  name 'Chromium'
  homepage 'http://www.freesmug.org/chromium'

  app 'Chromium.app'
end
