cask 'freesmug-chromium' do
  version '76.0.3809.87'
  sha256 'a1a69479d1c36bca95f39b23e353dbaf5ca98e7861c7ad3fdfcecfea982514d3'

  # sourceforge.net/osxportableapps was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/osxportableapps/Chromium_OSX_#{version}.dmg"
  appcast 'https://sourceforge.net/projects/osxportableapps/rss?path=/Chromium'
  name 'Chromium'
  homepage 'http://www.freesmug.org/chromium'

  app 'Chromium.app'
end
