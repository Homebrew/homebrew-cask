cask 'freesmug-chromium' do
  version '75.0.3770.142'
  sha256 '15b8c910fe7cbd43730295e9dfe558f07929ef8360efbc4d427229ea4f0eff73'

  # sourceforge.net/osxportableapps was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/osxportableapps/Chromium_OSX_#{version}.dmg"
  appcast 'https://sourceforge.net/projects/osxportableapps/rss?path=/Chromium'
  name 'Chromium'
  homepage 'http://www.freesmug.org/chromium'

  app 'Chromium.app'
end
