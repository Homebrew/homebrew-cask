cask 'freesmug-chromium' do
  version '55.0.2883.95'
  sha256 '896fc761cd3e510f751503b0f18193d1003dae6cf69d8015415fd193ad720b7f'

  # sourceforge.net/osxportableapps was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/osxportableapps/Chromium_OSX_#{version}.dmg"
  appcast 'https://sourceforge.net/projects/osxportableapps/rss?path=/Chromium',
          checkpoint: '4872d9222b6efc8d3c507caa3b6895e3412da15b9f0dbeb7cb910ae909053c2d'
  name 'Chromium'
  homepage 'http://www.freesmug.org/chromium'

  app 'Chromium.app'
end
