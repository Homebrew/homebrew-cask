cask 'freesmug-chromium' do
  version '65.0.3325.162'
  sha256 '34e35227a1764ad3f928e454807b727e2413da928d48a63f8ff72503f1627814'

  # sourceforge.net/osxportableapps was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/osxportableapps/Chromium_OSX_#{version}.dmg"
  appcast 'https://sourceforge.net/projects/osxportableapps/rss?path=/Chromium',
          checkpoint: 'd334643ff735c9d9f2bb4fde6aab307ffb1a293a64d418013a1dcc59172e736f'
  name 'Chromium'
  homepage 'http://www.freesmug.org/chromium'

  app 'Chromium.app'
end
