cask 'freesmug-chromium' do
  version '72.0.3626.119'
  sha256 '2826ba2715790a384447fdf39fb1f7e388c4a68824164ee6e56a57623b2fb50d'

  # sourceforge.net/osxportableapps was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/osxportableapps/Chromium_OSX_#{version}.dmg"
  appcast 'https://sourceforge.net/projects/osxportableapps/rss?path=/Chromium'
  name 'Chromium'
  homepage 'http://www.freesmug.org/chromium'

  app 'Chromium.app'
end
