cask 'freesmug-chromium' do
  version '72.0.3626.121'
  sha256 '796d269c9f12d8614875ae7327214e57bd3872ffe203dd1c7ec0f3fbeca1ba85'

  # sourceforge.net/osxportableapps was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/osxportableapps/Chromium_OSX_#{version}.dmg"
  appcast 'https://sourceforge.net/projects/osxportableapps/rss?path=/Chromium'
  name 'Chromium'
  homepage 'http://www.freesmug.org/chromium'

  app 'Chromium.app'
end
