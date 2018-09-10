cask 'freesmug-chromium' do
  version '69.0.3497.81'
  sha256 '44d9c03110cf642ac26b3c3e1ad0263c208c764fb4e1346af7522f302498aaac'

  # sourceforge.net/osxportableapps was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/osxportableapps/Chromium_OSX_#{version}.dmg"
  appcast 'https://sourceforge.net/projects/osxportableapps/rss?path=/Chromium'
  name 'Chromium'
  homepage 'http://www.freesmug.org/chromium'

  app 'Chromium.app'
end
