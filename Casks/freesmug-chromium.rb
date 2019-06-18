cask 'freesmug-chromium' do
  version '75.0.3770.90'
  sha256 '3b74e8b2fd0be8ead06db80efcd769b5c107cdfe8c61d51245c7cb479b814421'

  # sourceforge.net/osxportableapps was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/osxportableapps/Chromium_OSX_#{version}.dmg"
  appcast 'https://sourceforge.net/projects/osxportableapps/rss?path=/Chromium'
  name 'Chromium'
  homepage 'http://www.freesmug.org/chromium'

  app 'Chromium.app'
end
