cask 'freesmug-chromium' do
  version '69.0.3497.100'
  sha256 'd1868d09ab50599826ac04bc72ced93ce59a21a16583b6fd2c12dc867f154fe0'

  # sourceforge.net/osxportableapps was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/osxportableapps/Chromium_OSX_#{version}.dmg"
  appcast 'https://sourceforge.net/projects/osxportableapps/rss?path=/Chromium'
  name 'Chromium'
  homepage 'http://www.freesmug.org/chromium'

  app 'Chromium.app'
end
