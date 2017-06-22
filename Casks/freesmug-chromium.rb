cask 'freesmug-chromium' do
  version '59.0.3071.109'
  sha256 '2df1379b5f4deba470061fb2b6be9ec08f2dc2948be2cb8860881ae8c610eaf6'

  # sourceforge.net/osxportableapps was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/osxportableapps/Chromium_OSX_#{version}.dmg"
  appcast 'https://sourceforge.net/projects/osxportableapps/rss?path=/Chromium',
          checkpoint: 'fa3c48071a407928858bcdbce1eb09d277c333e2f80b5cbbb456fb0fd2984d13'
  name 'Chromium'
  homepage 'http://www.freesmug.org/chromium'

  app 'Chromium.app'
end
