cask 'freesmug-chromium' do
  version '78.0.3904.97'
  sha256 '7c90c63714a983e1d2277f40a1f3ce1e90f245c1b1a8bacc6e9308ed328d552b'

  # sourceforge.net/osxportableapps was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/osxportableapps/Chromium_OSX_#{version}.dmg"
  appcast 'https://sourceforge.net/projects/osxportableapps/rss?path=/Chromium'
  name 'Chromium'
  homepage 'http://www.freesmug.org/chromium'

  app 'Chromium.app'
end
