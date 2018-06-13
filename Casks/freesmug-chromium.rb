cask 'freesmug-chromium' do
  version '67.0.3396.87'
  sha256 '7e28db21d2562bca9dad9b341b0488df312f8bc812576c870f9212ee9fcd9bcb'

  # sourceforge.net/osxportableapps was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/osxportableapps/Chromium_OSX_#{version}.dmg"
  appcast 'https://sourceforge.net/projects/osxportableapps/rss?path=/Chromium'
  name 'Chromium'
  homepage 'http://www.freesmug.org/chromium'

  app 'Chromium.app'
end
