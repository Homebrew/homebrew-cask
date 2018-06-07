cask 'freesmug-chromium' do
  version '67.0.3396.79'
  sha256 '2f1be940167ef34f3a0d33a17e84d897a1a13101754a45840bc47553af8cc492'

  # sourceforge.net/osxportableapps was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/osxportableapps/Chromium_OSX_#{version}.dmg"
  appcast 'https://sourceforge.net/projects/osxportableapps/rss?path=/Chromium',
          checkpoint: '27caeac244c23f3778fde1ec7e24238f4a328583b19af7292c9d8086cf19b0a7'
  name 'Chromium'
  homepage 'http://www.freesmug.org/chromium'

  app 'Chromium.app'
end
