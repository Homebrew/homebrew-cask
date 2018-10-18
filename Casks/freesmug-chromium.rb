cask 'freesmug-chromium' do
  version '70.0.3538.67'
  sha256 'd91526d6b6e4038a54ccdde6e29bf09aabd64e0de5bb62610df3b79f47c26af5'

  # sourceforge.net/osxportableapps was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/osxportableapps/Chromium_OSX_#{version}.dmg"
  appcast 'https://sourceforge.net/projects/osxportableapps/rss?path=/Chromium'
  name 'Chromium'
  homepage 'http://www.freesmug.org/chromium'

  app 'Chromium.app'
end
