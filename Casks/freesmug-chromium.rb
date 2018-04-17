cask 'freesmug-chromium' do
  version '65.0.3325.181'
  sha256 'dd1d4a72a8ea7ac4fc110ef1852929192c55948a486a447fb63eb0f8c7740dc8'

  # sourceforge.net/osxportableapps was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/osxportableapps/Chromium_OSX_#{version}.dmg"
  appcast 'https://sourceforge.net/projects/osxportableapps/rss?path=/Chromium',
          checkpoint: '21cc0005151ef3ab5e53cf134308f3460d90f931552ba1cfc539430b740687b4'
  name 'Chromium'
  homepage 'http://www.freesmug.org/chromium'

  app 'Chromium.app'
end
