cask 'freesmug-chromium' do
  version '78.0.3904.70'
  sha256 'e25f27fa94d99a1a2117b03ec09261dec43acb580a285d82b19d57464b75bb07'

  # sourceforge.net/osxportableapps was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/osxportableapps/Chromium_OSX_#{version}.dmg"
  appcast 'https://sourceforge.net/projects/osxportableapps/rss?path=/Chromium'
  name 'Chromium'
  homepage 'http://www.freesmug.org/chromium'

  app 'Chromium.app'
end
