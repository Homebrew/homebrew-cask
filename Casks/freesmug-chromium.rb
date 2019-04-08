cask 'freesmug-chromium' do
  version '73.0.3683.103'
  sha256 '1bfc599278f47a5157df60113eaeee20cfeab70b70528b4dd4cf7563ce252fe7'

  # sourceforge.net/osxportableapps was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/osxportableapps/Chromium_OSX_#{version}.dmg"
  appcast 'https://sourceforge.net/projects/osxportableapps/rss?path=/Chromium'
  name 'Chromium'
  homepage 'http://www.freesmug.org/chromium'

  app 'Chromium.app'
end
